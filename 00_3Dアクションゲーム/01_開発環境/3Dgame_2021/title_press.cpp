//=============================================================================
//
// �^�C�g������Ui�̏��� [title_press.cpp]
// Author : Konishi Yuuto
//
//=============================================================================

//=============================================================================
// �C���N���[�h
//=============================================================================
#include "title_press.h"
#include "manager.h"
#include "resource_manager.h"
#include "texture.h"

//=============================================================================
// �}�N����`
//=============================================================================
#define TITLE_PRESS_FLASH_NUM	(0.015f)		// �_�ŗp�̒l
#define TITLE_PRESS_FLASH_FLAME	(15)			// �_�ł̃J�E���g

//=============================================================================
// �I�u�W�F�N�g����
//=============================================================================
CTitlePress* CTitlePress::Create(D3DXVECTOR3 pos, D3DXVECTOR3 size)
{
	// �I�u�W�F�N�g�𐶐�
	CTitlePress *pTitlePress = new CTitlePress;

	if (pTitlePress != nullptr)
	{
		// ����������
		pTitlePress->Init(pos, size);
	}

	return pTitlePress;
}

//=============================================================================
// �R���X�g���N�^
//=============================================================================
CTitlePress::CTitlePress()
{
}

//=============================================================================
// �f�X�g���N�^
//=============================================================================
CTitlePress::~CTitlePress()
{

}

//=============================================================================
// ����������
//=============================================================================
HRESULT CTitlePress::Init(D3DXVECTOR3 pos, D3DXVECTOR3 size)
{
	// ����������
	CScene2D::Init(pos, size);					// ���W�A�T�C�Y
	SetSubFlashNum(TITLE_PRESS_FLASH_NUM);		// �_�ł̒l

	// �e�N�X�`���ݒ�
	CTexture *pTexture = CManager::GetResourceManager()->GetTextureClass();
	BindTexture(pTexture->GetTexture(CTexture::TEXTURE_NUM_TITLE_LOGO));		// �e�N�X�`�����f

	return S_OK;
}

//================================================
// �X�V����
//================================================
void CTitlePress::Update(void)
{
	// �X�V����
	CScene2D::Update();

	// �|���S���̓_��
	FlashPolygon(TITLE_PRESS_FLASH_FLAME);
}