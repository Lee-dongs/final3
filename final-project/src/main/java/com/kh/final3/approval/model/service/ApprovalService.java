package com.kh.final3.approval.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.final3.approval.model.vo.Approval;
import com.kh.final3.approval.model.vo.ApprovalAttachment;
import com.kh.final3.approval.model.vo.ApprovalDoc;
import com.kh.final3.approval.model.vo.DocType;
import com.kh.final3.approval.model.vo.item;
import com.kh.final3.common.vo.PageInfo;
import com.kh.final3.member.model.vo.Member;


public interface ApprovalService {
	
	//�Խñ� �� ��ȸ
	int selectListCount(String status);
	
	//������ ��ü��ȸ
	ArrayList<ApprovalDoc> selectApprovalList(PageInfo pi, String status);
	
	//���� �ֱ� �����ȸ
	ArrayList<ApprovalDoc> approvalMainList(String status);
	
	//��ĸ���Ʈ ��������
	ArrayList<DocType> selectEnrollList();
	
	//������� �����ȸ
	ArrayList<Member> selectApproverList(String deptCode);
	
	//������� ��� �˻�
	ArrayList<Member> searchApproverList(HashMap<String, String> map);
	
	//����ǰ�Ǽ� �ۼ�
	int insertItem(item i, ArrayList<ApprovalAttachment> atList, ApprovalDoc ad, Approval a);
}
