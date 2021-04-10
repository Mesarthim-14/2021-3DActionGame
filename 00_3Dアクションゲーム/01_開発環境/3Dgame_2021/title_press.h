#ifndef _TITLE_PRESS_H_
#define _TITLE_PRESS_H_
//=============================================================================
//
// �^�C�g���v���XUi�̏��� [title_press.h]
// Author : Konishi Yuuto
//
//=============================================================================

//=============================================================================
// �C���N���[�h
//=============================================================================
#include "scene2d.h"

//=============================================================================
//�N���X�錾
//=============================================================================
class CTitlePress : public CScene2D
{
public:
	CTitlePress();		// �R���X�g���N�^
	~CTitlePress();		// �f�X�g���N�^

	static CTitlePress *Create(D3DXVECTOR3 pos, D3DXVECTOR3 size);	// �I�u�W�F�N�g�����֐�

	HRESULT Init(D3DXVECTOR3 pos, D3DXVECTOR3 size);			// ����������
	void Update(void);											// �X�V����
private:
};
#endif // ! _TITLEBG_H_
