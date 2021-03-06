#ifndef _MESHFIELD_H_
#define _MESHFIELD_H_
//=====================================================
//
// メッシュフィールドのクラス [meshfield.h]
// Author : Konishi Yuuto
//
//=====================================================

//=============================================================================
// インクルードファイル
//=============================================================================
#include "main.h"
#include "mesh_3d.h"

//=============================================================================
// マクロ定義
//=============================================================================
#define FIELD_WIDTH					(4)				// 分割数
#define FIELD_HEIGHT				(4)				// 分割数
#define FIELD_WIDTH_SIZE			(16000.0f)		// サイズ
#define FIELD_HEIGHT_SIZE			(16000.0f)		// サイズ

//=============================================================================
// メッシュフィールドクラス
//=============================================================================
class CMeshField : public CMesh3d
{
public:
	CMeshField(PRIORITY = PRIORITY_0);			// コンストラクタ
	~CMeshField();			// デストラクタ

	HRESULT Init(D3DXVECTOR3 pos, D3DXVECTOR3 size);	// 初期化処理
	void Uninit(void);									// 終了処理
	void Update(void);									// 更新処理
	void Draw(void);									// 描画処理

	static CMeshField*Create(void);		// メッシュフィールド
private:
};

#endif