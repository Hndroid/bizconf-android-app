package com.zipow.videobox;

interface IPTService {
	void sendMessage(in byte[] message);
	void sendMessageFromSip(in byte[] message);
	boolean isSignedIn();
	boolean isIMSignedIn();
	boolean isPTAppAtFront();
	int inviteBuddiesToConf(in String[] buddyJids, in String[] emails, String meetingId, long meetingNum, String invitationMsgTemplate);
	int getBuddyItemCount();
//	byte[] getBuddyItemData(int index);
//	byte[] getBuddyItemDataByJid(String jid);
	void reloadAllBuddyItems();
	String[] filterBuddyWithInput(String input);
//	void startConfUI();
	void showNeedUpdate();
	int getPTLoginType();
	String FavoriteMgr_getLocalPicturePath(String email);
	byte[] FavoriteMgr_getFavoriteListWithFilter(String filter);
	String[] ABContactsHelper_getMatchedPhoneNumbers();
	int ABContactsHelper_inviteABContacts(in String[] phoneNumbers, String invitationMsgTemplate);
	String[] getLatestMeetingInfo();
	void onConfUIMoveToFront(String activityClass);
	void onConfUIMoveToBackground();
	void onBOStatusChangeStart(boolean join, int joinReason, String boMeetingName);
	void onBOStatusChangeComplete();
	void onJoinConfMeetingStatus(boolean canJoinNow, boolean hasScreenName); 
	boolean inviteCallOutUser(String callOutNumber, String userName);
	boolean cancelCallOut();
	boolean isCallOutInProgress();
	int getCallOutStatus();
	void onCallOutStatus(int status); 
	String[] getH323Gateway();
	String getH323Password();
	boolean sendMeetingParingCode(long meetingId,  String paringCode);
	boolean callOutRoomSystem(String address, int deviceType);
	boolean cancelCallOutRoomSystem();
	boolean isSdkNeedWaterMark();	
}
