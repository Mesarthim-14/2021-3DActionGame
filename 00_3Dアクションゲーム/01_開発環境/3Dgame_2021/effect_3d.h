#ifndef _EFFECT_3D_H_
#define _EFFECT_3D_H_
//=====================================================
//
// 3Dエフェクトヘッダー [effect_3d.h]
// Author : Konishi Yuuto
//
//=====================================================

//=====================================================
// インクルード
//=====================================================
#include "scene3D.h"
#include "effect_factory.h"

//=====================================================
// マクロ定義
//=====================================================

//=====================================================
// 前方宣言
//=====================================================
CEffectFactory;

//=====================================================
// 3Dエフェクトのクラス
//=====================================================
class CEffect3D : public CScene3D
{
public:
	CEffect3D(PRIORITY Priority = PRIORITY_PARTICLE);	// コンストラクタ
	~CEffect3D();										// デストラクタ

	HRESULT Init(D3DXVECTOR3 pos, D3DXVECTOR3 size);	// 初期化処理
	void Uninit(void);									// 終了処理
	void Update(void);									// 更新処理
	void Draw(void);									// 描画処理

	static CEffect3D*Create(D3DXVECTOR3 pos,			// インスタンス生成
		CEffectFactory::EFFECT Particle, int nTexInfo);

	void SetLife(int nLife);							// ライフの設定
private:
	int m_nLife;		// ライフ
};

#endif