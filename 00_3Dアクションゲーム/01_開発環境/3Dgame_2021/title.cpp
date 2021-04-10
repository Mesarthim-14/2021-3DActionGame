//=============================================================================
//
// タイトル処理 [title.cpp]
// Author : Konishi Yuuto
//
//=============================================================================

//=============================================================================
// インクルード
//=============================================================================
#include "title.h"
#include "manager.h"
#include "renderer.h"
#include "input.h"
#include "scene2d.h"
#include "title_press.h"
#include "fade.h"
#include "keyboard.h"
#include "texture.h"
#include "sound.h"
#include "joypad.h"
#include "resource_manager.h"

//=============================================================================
// マクロ定義
//=============================================================================
#define ROTATION_NUM		(0.1f)		// 回転の速さ

//=============================================================================
// コンストラクタ
//=============================================================================
CTitle::CTitle()
{
	//メンバ変数のクリア
	m_pScene2D = nullptr;
	m_pPress = nullptr;
	m_pTitleName = nullptr;
}

//=============================================================================
// デストラクタ
//=============================================================================
CTitle::~CTitle()
{
	// 終了処理
	Uninit();
}

//=============================================================================
// インスタンス生成
//=============================================================================
CTitle * CTitle::Create(void)
{
	//リザルトクラスのポインタ変数
	CTitle *pTitle = new CTitle;

	//メモリが確保できていたら
	if (pTitle != nullptr)
	{
		//初期化処理呼び出し
		pTitle->Init();
	}

	return pTitle;
}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CTitle::Init(void)
{
	// テクスチャのポインタ
	CTexture *pTexture = GET_TEXTURE_PTR;

	// nullcheck
	if (m_pScene2D == nullptr)
	{
		//2Dオブジェクトの生成
		m_pScene2D = CScene2D::Create(D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, 0.0f), D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, 0.0f));

		if (m_pScene2D != nullptr)
		{
			m_pScene2D->BindTexture(pTexture->GetTexture(CTexture::TEXTURE_NUM_TITLE_BG));
		}
	}

	// nullcheck
	if (m_pPress == nullptr)
	{
		// PRESSロゴのポインタ
		m_pPress = CTitlePress::Create(D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2 + TITLE_PRESS_POS_Y, 0.0f), D3DXVECTOR3(TITLE_PRESS_SIZE_X, TITLE_PRESS_SIZE_Y, 0.0f));
	}

	// nullcheck
	if (m_pTitleName == nullptr)
	{
		//2Dオブジェクトの生成
		m_pTitleName = CScene2D::Create(D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2 - 50.0f, 0.0f), D3DXVECTOR3(TITLE_SIZE_X, TITLE_SIZE_Y, 0.0f));

		if (m_pTitleName != nullptr)
		{
			m_pTitleName->BindTexture(pTexture->GetTexture(CTexture::TEXTURE_NUM_TITLE_NAME));
		}
	}

	return S_OK;
}

//=============================================================================
// 終了処理
//=============================================================================
void CTitle::Uninit(void)
{
	if (m_pScene2D != nullptr)
	{
		m_pScene2D->Uninit();
		m_pScene2D = nullptr;
	}

	if (m_pTitleName != nullptr)
	{
		m_pTitleName->Uninit();
		m_pTitleName = nullptr;
	}

	if (m_pPress != nullptr)
	{
		m_pPress->Uninit();
		m_pPress = nullptr;
	}
}

//=============================================================================
// 更新処理
//=============================================================================
void CTitle::Update(void)
{
	CInputKeyboard* pKey = CManager::GetKeyboard();
	CFade::FADE_MODE mode = CManager::GetFade()->GetFade();
	CSound *pSound = CManager::GetResourceManager()->GetSoundClass();

	// コントローラのstartを押したときか、エンターキーを押したとき
	if (CManager::GetJoypad()->GetJoystickTrigger(CInputJoypad::JOY_BUTTON_START, 0) && mode == CFade::FADE_MODE_NONE
		|| pKey->GetTrigger(DIK_RETURN) && mode == CFade::FADE_MODE_NONE)
	{
		CFade *pFade = CManager::GetFade();
		pFade->SetFade(CManager::MODE_TYPE_GAME);
	}
}

//=============================================================================
// 描画処理
//=============================================================================
void CTitle::Draw(void)
{
}