package com.kh.final3.approval.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Leave {
	private int docNo;
	private String deptCode;
	private String workReceiver;
	private String[] arrLeaveCode;
	private String[] arrStartDate;
	private String[] arrEndDate;
	private String leaveContent;
	private String createDate;
	private String[] arrLeaveStatus;
	
	//����Ʈ �������� �ޱ����� VO
	private String leaveCode;
	private String startDate;
	private String endDate;
	private String leaveStatus;
	
}
