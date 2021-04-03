//=============================================================================
//
// リソースマネージャー処理 [resource_manager.cpp]
// Author : Konishi Yuuto
//
//=============================================================================

//=============================================================================
// インクルード
//=============================================================================
#include "resource_manager.h"
#include "texture.h"
#include "xfile.h"
#include "sound.h"

//=============================================================================
// static初期化宣言
//=============================================================================
CResourceManager *CResourceManager::m_pResourceManager = nullptr;	// 自身のポインタ


//=============================================================================
// コンストラクタ
//=============================================================================
CResourceManager::CResourceManager()
{
	m_pTexture = nullptr;		// テクスチャのポインタ
	m_pXFile = nullptr;		// Xファイルのポインタ
	m_pSound = nullptr;		// サウンドのポインタ
}

//=============================================================================
// デストラクタ
//=============================================================================
CResourceManager::~CResourceManager()
{
	// アンロード処理
	UnLoadAll();

	// nullcheck
	if (m_pTexture != nullptr)
	{
		// テクスチャポインタ開放
		delete m_pTexture;
		m_pTexture = nullptr;
	}

	// nullcheck
	if (m_pXFile != nullptr)
	{
		// Xファイルポインタ開放
		delete m_pXFile;
		m_pXFile = nullptr;
	}

	// nullcheck
	if (m_pSound != nullptr)
	{
		// 終了処理
		m_pSound->Uninit();

		// サウンドポインタ開放
		delete m_pSound;
		m_pSound = nullptr;
	}
}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CResourceManager::Init(void)
{
	// nullcheck
	if (m_pTexture == nullptr)
	{
		// テクスチャのインスタンス生成
		m_pTexture = CTexture::Create();
	}

	// nullcheck
	if (m_pXFile == nullptr)
	{
		// Xファイルのインスタンス生成
		m_pXFile = CXfile::Create();
	}

	// nullcheck
	if (m_pSound == nullptr)
	{
		// サウンドのインスタンス生成
		m_pSound = CSound::Create();
	}

	return S_OK;
}

//=============================================================================
// ロード処理
//=============================================================================
void CResourceManager::LoadAll(void)
{
	// !nullcheck
	if (m_pTexture != nullptr)
	{
		// テクスチャロード
		m_pTexture->Load();
		m_pTexture->SeparateTexLoad();
	}

	// !nullcheck
	if (m_pXFile != nullptr)
	{
		// モデルロード
		m_pXFile->ModelLoad();

		// 階層構造のファイル読み込み
		m_pXFile->HierarchyReadFile();

		// 階層構造のモデル読み込み
		m_pXFile->HierarchyModelLoad();
	}
}

//=============================================================================
// アンロード処理
//=============================================================================
void CResourceManager::UnLoadAll(void)
{
	// !nullcheck
	if (m_pTexture != nullptr)
	{
		// テクスチャアンロード
		m_pTexture->UnLoad();
		m_pTexture->SeparateTexUnLoad();
	}

	// !nullcheck
	if (m_pXFile != nullptr)
	{
		// テクスチャアンロード
		m_pXFile->ModelUnLoad();
		m_pXFile->HierarchyModelUnLoad();
	}

	// nullcheck
	if (m_pSound != nullptr)
	{
		// 終了処理
		m_pSound->Uninit();

		// サウンドポインタ開放
		delete m_pSound;
		m_pSound = nullptr;
	}
}

//=============================================================================
// インスタンス取得関数
//=============================================================================
CResourceManager * CResourceManager::GetInstance(void)
{
	if (m_pResourceManager == nullptr)
	{
		// メモリ確保
		m_pResourceManager = new CResourceManager;

		// nullcheck
		if (m_pResourceManager != nullptr)
		{
			// 初期化処理
			m_pResourceManager->Init();
		}
	}

	return m_pResourceManager;
}