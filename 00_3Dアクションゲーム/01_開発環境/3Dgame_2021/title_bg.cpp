//=============================================================================
//
// タイトル背景の処理 [title_bg.cpp]
// Author : Konishi Yuuto
//
//=============================================================================

//=============================================================================
// インクルード
//=============================================================================
#include "title_bg.h"
#include "manager.h"
#include "renderer.h"
#include "resource_manager.h"
#include "texture.h"

//=============================================================================
// オブジェクト生成
//=============================================================================
CTitleBg* CTitleBg::Create(D3DXVECTOR3 pos, D3DXVECTOR3 size)
{
	// オブジェクトを生成
	CTitleBg *pTitleBg = new CTitleBg;

	if (pTitleBg != NULL)
	{
		// 初期化処理
		pTitleBg->Init(pos, size);
	}

	return pTitleBg;
}

//=============================================================================
// コンストラクタ
//=============================================================================
CTitleBg::CTitleBg()
{
}

//=============================================================================
// デストラクタ
//=============================================================================
CTitleBg::~CTitleBg()
{

}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CTitleBg::Init(D3DXVECTOR3 pos, D3DXVECTOR3 size)
{
	// 初期化処理
	CScene2D::Init(pos, size);												// 座標、サイズ

	// テクスチャ設定
	CTexture *pTexture = CManager::GetResourceManager()->GetTextureClass();
	BindTexture(pTexture->GetTexture(CTexture::TEXTURE_NUM_TITLE_BG));		// テクスチャ反映

	return S_OK;
}

//================================================
// 終了処理
//================================================
void CTitleBg::Uninit(void)
{
	// 終了処理
	CScene2D::Uninit();

	Release();
}

//================================================
// 更新処理
//================================================
void CTitleBg::Update(void)
{
	// 更新処理
	CScene2D::Update();
}

//================================================
// 描画処理
//================================================
void CTitleBg::Draw(void)
{
	// 描画処理
	CScene2D::Draw();
}