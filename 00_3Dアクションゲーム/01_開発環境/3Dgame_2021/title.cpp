//=============================================================================
//
// �^�C�g������ [title.cpp]
// Author : Konishi Yuuto
//
//=============================================================================

//=============================================================================
// �C���N���[�h
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
// �}�N����`
//=============================================================================
#define ROTATION_NUM		(0.1f)		// ��]�̑���

//=============================================================================
// �R���X�g���N�^
//=============================================================================
CTitle::CTitle()
{
	//�����o�ϐ��̃N���A
	m_pScene2D = nullptr;
	m_pPress = nullptr;
	m_pTitleName = nullptr;
}

//=============================================================================
// �f�X�g���N�^
//=============================================================================
CTitle::~CTitle()
{
	// �I������
	Uninit();
}

//=============================================================================
// �C���X�^���X����
//=============================================================================
CTitle * CTitle::Create(void)
{
	//���U���g�N���X�̃|�C���^�ϐ�
	CTitle *pTitle = new CTitle;

	//���������m�ۂł��Ă�����
	if (pTitle != nullptr)
	{
		//�����������Ăяo��
		pTitle->Init();
	}

	return pTitle;
}

//=============================================================================
// ����������
//=============================================================================
HRESULT CTitle::Init(void)
{
	// �e�N�X�`���̃|�C���^
	CTexture *pTexture = GET_TEXTURE_PTR;

	// nullcheck
	if (m_pScene2D == nullptr)
	{
		//2D�I�u�W�F�N�g�̐���
		m_pScene2D = CScene2D::Create(D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, 0.0f), D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, 0.0f));

		if (m_pScene2D != nullptr)
		{
			m_pScene2D->BindTexture(pTexture->GetTexture(CTexture::TEXTURE_NUM_TITLE_BG));
		}
	}

	// nullcheck
	if (m_pPress == nullptr)
	{
		// PRESS���S�̃|�C���^
		m_pPress = CTitlePress::Create(D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2 + TITLE_PRESS_POS_Y, 0.0f), D3DXVECTOR3(TITLE_PRESS_SIZE_X, TITLE_PRESS_SIZE_Y, 0.0f));
	}

	// nullcheck
	if (m_pTitleName == nullptr)
	{
		//2D�I�u�W�F�N�g�̐���
		m_pTitleName = CScene2D::Create(D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2 - 50.0f, 0.0f), D3DXVECTOR3(TITLE_SIZE_X, TITLE_SIZE_Y, 0.0f));

		if (m_pTitleName != nullptr)
		{
			m_pTitleName->BindTexture(pTexture->GetTexture(CTexture::TEXTURE_NUM_TITLE_NAME));
		}
	}

	return S_OK;
}

//=============================================================================
// �I������
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
// �X�V����
//=============================================================================
void CTitle::Update(void)
{
	CInputKeyboard* pKey = CManager::GetKeyboard();
	CFade::FADE_MODE mode = CManager::GetFade()->GetFade();
	CSound *pSound = CManager::GetResourceManager()->GetSoundClass();

	// �R���g���[����start���������Ƃ����A�G���^�[�L�[���������Ƃ�
	if (CManager::GetJoypad()->GetJoystickTrigger(CInputJoypad::JOY_BUTTON_START, 0) && mode == CFade::FADE_MODE_NONE
		|| pKey->GetTrigger(DIK_RETURN) && mode == CFade::FADE_MODE_NONE)
	{
		CFade *pFade = CManager::GetFade();
		pFade->SetFade(CManager::MODE_TYPE_GAME);
	}
}

//=============================================================================
// �`�揈��
//=============================================================================
void CTitle::Draw(void)
{
}