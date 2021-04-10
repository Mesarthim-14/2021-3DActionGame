#ifndef  _TUTORIAL_H_
#define  _TUTORIAL_H_
//=============================================================================
//
//  チュートリアルクラス [tutorial.h]
// Author : Konishi Yuuto
//
//=============================================================================


//=============================================================================
//インクルードファイル
//=============================================================================
#include "scene.h"

//=============================================================================
//前方宣言
//=============================================================================
class CScene2D;

//=============================================================================
//クラス宣言
//=============================================================================
class CTutorial : public CScene
{
public:
	CTutorial(PRIORITY Priority = PRIORITY_0);
	~CTutorial();
	static CTutorial* Create(void);
	static HRESULT Load(void);
	HRESULT Init(D3DXVECTOR3 pos, D3DXVECTOR3 size);
	void Uninit(void);
	void Update(void);
	void Draw(void);

private:
	static LPDIRECT3DTEXTURE9 m_pTexture[1];	//テクスチャへのポインタ
	CScene2D* m_pScene;	//ポインタ
};

#endif // ! _TUTORIAL_H_

