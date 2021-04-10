//=============================================================================
//
// ���U���g�N���X���� [result.cpp]
// Author : Konishi Yuuto
//
//=============================================================================

//=============================================================================
// �C���N���[�h
//=============================================================================
#include "result.h"
#include "manager.h"
#include "renderer.h"
#include "input.h"
#include "scene2d.h"
#include "fade.h"
#include "keyboard.h"
#include "joypad.h"
#include "resource_manager.h"

//=============================================================================
// �R���X�g���N�^
//=============================================================================
CResult::CResult()
{
	//�����o�ϐ��̃N���A
	m_pScene2D = nullptr;
}

//=============================================================================
// �f�X�g���N�^
//=============================================================================
CResult::~CResult()
{
	// �I������
	Uninit();
}

//=============================================================================
// �C���X�^���X����
//=============================================================================
CResult * CResult::Create(void)
{
	//���U���g�N���X�̃|�C���^�ϐ�
	CResult *pResult = new CResult;

	//���������m�ۂł��Ă�����
	if (pResult != nullptr)
	{
		//�����������Ăяo��
		pResult->Init();
	}

	return pResult;
}

//=============================================================================
// ����������
//=============================================================================
HRESULT CResult::Init(void)
{
	//2D�I�u�W�F�N�g�̐���
	m_pScene2D = CScene2D::Create(
		D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, 0.0f), D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, 0.0f));
	
	return E_NOTIMPL;
}

//=============================================================================
// �I������
//=============================================================================
void CResult::Uninit(void)
{
	if (m_pScene2D != nullptr)
	{
		m_pScene2D->Uninit();
		m_pScene2D = nullptr;
	}
}

//=============================================================================
// �X�V����
//=============================================================================
void CResult::Update(void)
{
	CInputKeyboard* pKey = CManager::GetKeyboard();
	CFade::FADE_MODE mode = CManager::GetFade()->GetFade();
	CSound *pSound = CManager::GetResourceManager()->GetSoundClass();

	// �R���g���[����start���������Ƃ����A�G���^�[�L�[���������Ƃ�
	if (CManager::GetJoypad()->GetJoystickTrigger(CInputJoypad::JOY_BUTTON_START, 0) && mode == CFade::FADE_MODE_NONE
		|| pKey->GetTrigger(DIK_RETURN) && mode == CFade::FADE_MODE_NONE)
	{
		CFade *pFade = CManager::GetFade();
		pFade->SetFade(CManager::MODE_TYPE_TITLE);
	}
}

//=============================================================================
// �`�揈��
//=============================================================================
void CResult::Draw(void)
{
}
