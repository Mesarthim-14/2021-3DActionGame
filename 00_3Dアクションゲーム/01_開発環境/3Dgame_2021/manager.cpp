//=============================================================================
//
// マネージャー処理 [manager.cpp]
// Author : Konishi Yuuto
//
//=============================================================================

//=============================================================================
// インクルード
//=============================================================================
#include "bg.h"
#include "billboard.h"
#include "fade.h"
#include "fire.h"
#include "game.h"
#include "input.h"
#include "joypad.h"
#include "keyboard.h"
#include "manager.h"
#include "mesh_3d.h"
#include "model.h"
#include "effect_factory.h"
#include "player.h"
#include "renderer.h"
#include "resource_manager.h"
#include "result.h"
#include "scene3D.h"
#include "sound.h"
#include "stone_effect.h"
#include "texture.h"
#include "title.h"
#include "title_bg.h"
#include "tutorial.h"
#include "xfile.h"

//=============================================================================
//静的メンバ変数宣言
//=============================================================================
CManager::MODE_TYPE CManager::m_mode = CManager::MODE_TYPE_TITLE;
unique_ptr<CRenderer> CManager::m_pRenderer = nullptr;
unique_ptr<CInputKeyboard> CManager::m_pInput = nullptr;
unique_ptr<CFade> CManager::m_pFade = nullptr;
unique_ptr<CInputJoypad> CManager::m_pJoypad = nullptr;
unique_ptr<CScene> CManager::m_pScene = nullptr;
unique_ptr<CResourceManager> CManager::m_pResourceManager = nullptr;
CTitle *CManager::m_pTitle = nullptr;
CTutorial *CManager::m_pTutorial = nullptr;
CGame *CManager::m_pGame = nullptr;
CResult *CManager::m_pResult = nullptr;

//=============================================================================
// コンストラクタ
//=============================================================================
CManager::CManager()
{
}

//=============================================================================
// デストラクタ
//=============================================================================
CManager::~CManager()
{
}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CManager::Init(HINSTANCE hInstance, HWND hWnd, bool bWindow)
{
	// メモリ確保
	m_pRenderer.reset(new CRenderer);
	m_pInput.reset(new CInputKeyboard);
	m_pJoypad.reset(new CInputJoypad);
	m_pFade.reset(new CFade);
	m_pResourceManager.reset(CResourceManager::GetInstance());

	//メモリが確保できたら
	if (m_pRenderer != nullptr)
	{
		// 初期化処理
		if (FAILED(m_pRenderer->Init(hWnd, bWindow)))
		{
			return -1;
		}
	}

	//メモリが確保できたら
	if (m_pInput != nullptr)
	{
		if (FAILED(m_pInput->Init(hInstance, hWnd)))
		{
			return -1;
		}
	}

	//メモリが確保できたら
	if (m_pJoypad != nullptr)
	{
		if (FAILED(m_pJoypad->Init(hInstance, hWnd)))
		{
			return -1;
		}
	}

	// !nullcheck
	if (m_pFade != nullptr)
	{
		// 初期化処理
		m_pFade->Init();
	}

	//全テクスチャの読み込み
	LoadAll();

	return S_OK;
}

//=============================================================================
// 終了処理
//=============================================================================
void CManager::Uninit(void)
{
	//全テクスチャの破棄
	UnLoadAll();

	//現在モードの終了
	switch (m_mode)
	{
		// タイトル
	case MODE_TYPE_TITLE:
		if (m_pTitle != nullptr)
		{
			// 終了処理
			m_pTitle->Uninit();
			m_pTitle = nullptr;
		}

		break;

		// チュートリアル
	case MODE_TYPE_TUTORIAL:
		if (m_pTutorial != nullptr)
		{
			// 終了処理
			m_pTutorial->Uninit();
			m_pTutorial = nullptr;
		}
		break;

		// ゲーム
	case MODE_TYPE_GAME:
		if (m_pGame != nullptr)
		{
			// 終了処理
			m_pGame->Uninit();
			m_pGame = nullptr;
		}
		break;

		// リザルト
	case MODE_TYPE_RESULT:
		if (m_pResult != nullptr)
		{
			// 終了処理
			m_pResult->Uninit();
			m_pResult = nullptr;
		}
		break;
	}

	// nullchack
	if (m_pFade != nullptr)
	{
		//フェードクラスの終了処理呼び出し
		m_pFade->Uninit();
		m_pFade.reset();
	}

	// !nullcheck
	if (m_pResourceManager != nullptr)
	{
		// リソースのロード
		m_pResourceManager.reset();
	}

	if (m_pInput != nullptr)
	{
		//入力処理クラスの終了処理呼び出し
		m_pInput->Uninit();

		//メモリの削除
		m_pInput.reset();
	}

	if (m_pJoypad != nullptr)
	{
		//入力処理クラスの終了処理呼び出し
		m_pJoypad->Uninit();

		//メモリの削除
		m_pJoypad.reset();
	}

	//メモリ開放
	if (m_pRenderer != nullptr)
	{	
		// 描画クラス
		m_pRenderer.reset();
	}

	// シーン情報のリリース
	CScene::ReleaseAll();
}

//=============================================================================
// 更新処理
//=============================================================================
void CManager::Update(void)
{
	if (m_pInput != nullptr)
	{
		//入力処理クラスの更新処理呼び出し
		m_pInput->Update();
	}

	if (m_pJoypad != nullptr)
	{
		//入力処理クラスの更新処理呼び出し
		m_pJoypad->Update();
	}

	if (m_pRenderer != nullptr)
	{
		//レンダラークラスの更新処理呼び出し
		m_pRenderer->Update();
	}

	if (m_pFade != nullptr)
	{
		//フェードクラスの更新処理呼び出し
		m_pFade->Update();
	}
}

//=============================================================================
//描画処理
//=============================================================================
void CManager::Draw(void)
{
	if (m_pRenderer != nullptr)
	{
		//レンダラークラスの描画処理呼び出し
		m_pRenderer->Draw();
	}
}

//=============================================================================
//テクスチャの全ロード処理
//=============================================================================
void CManager::LoadAll(void)
{
	// !nullcheck
	if (m_pResourceManager != nullptr)
	{
		// リソースのロード
		m_pResourceManager->LoadAll();
	}

	CEffectFactory::ReadFile();
	CStoneEffect::ReadFile();
	CMesh3d::ReadFile();
}

//=============================================================================
//テクスチャの全アンロード処理
//=============================================================================
void CManager::UnLoadAll(void)
{

}

//=============================================================================
//ゲームモードの設定処理
//=============================================================================
void CManager::SetMode(MODE_TYPE mode)
{
	// サウンドの情報
	CSound *pSound = CManager::GetResourceManager()->GetSoundClass();

	//現在モードの終了
	switch (m_mode)
	{
		// タイトル
	case MODE_TYPE_TITLE:
		if (m_pTitle != nullptr)
		{
			// タイトル処理
			m_pTitle->Uninit();
			m_pTitle = nullptr;
		}
		break;

		// チュートリアル
	case MODE_TYPE_TUTORIAL:
		if (m_pTutorial != nullptr)
		{
			pSound->Stop(CSound::SOUND_LABEL_BGM_TITLE);
			m_pTutorial = nullptr;
		}
		break;

		// ゲーム
	case MODE_TYPE_GAME:
		if (m_pGame != nullptr)
		{
			pSound->Stop(CSound::SOUND_LABEL_BGM_GAME);
			m_pGame = nullptr;
		}
		break;

		// リザルト
	case MODE_TYPE_RESULT:
		if (m_pResult != nullptr)
		{
			m_pResult = nullptr;
		}
		break;

	}

	// シーン情報のリリース
	CScene::ReleaseAll();

	//モードを設定
	m_mode = mode;

	//設定されたモードをクリエイト
	switch (m_mode)
	{
		// タイトル
	case MODE_TYPE_TITLE:
		if (m_pTitle == nullptr)
		{
			// タイトル生成
			m_pTitle = CTitle::Create();
		}
		break;

		// チュートリアル
	case MODE_TYPE_TUTORIAL:
		if (m_pTutorial == nullptr)
		{
			// チュートリアル生成
			m_pTutorial = CTutorial::Create();
		}
		break;

		// ゲーム
	case MODE_TYPE_GAME:
		if (m_pGame == nullptr)
		{
			// ゲーム生成
			m_pGame = CGame::Create();
		}

		break;

		// リザルト
	case MODE_TYPE_RESULT:
		if (m_pResult == nullptr)
		{
			// リザルト生成
			m_pResult = CResult::Create();
		}

	default:
		break;
	}
}

//=============================================================================
//ゲームモード情報の取得
//=============================================================================
CManager::MODE_TYPE CManager::GetMode(void)
{
	return m_mode;
}