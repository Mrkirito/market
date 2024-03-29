package com.hangjia.bxj.model;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;
import java.util.Date;

/**
 *  邀请函预览
 * @ClassName: InvitationPreview
 * @Description: 
 * @author: yaoy
 * @date: 2016年6月30日
 */
public class InvitationPreview implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6232820270945593656L;

	/**
	 * 主键
	 */
	private Long id;
	
	/**
	 * 外键
	 */
	private Long inviteId;
	
	/**
	 * 关联用户ID。
	 */
	private Integer userId;
	
	/**
	 * 产说会名称
	 */
	private String name;
	
	/**
	 * 产说会时间。
	 */
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm")
	private Date dateAt;
	
	/**
	 * 地址。
	 */
	private String address;
	
	/**
	 * 联系人。
	 */
	private String contactName;
	
	/**
	 * 联系人手机，或电话
	 */
	private String contactMobile;
	
	/**
	 * 邀请函正文。
	 */
	private String text;
	
	/**
	 * 模板类型
	 */
	private Integer modelType;
	/**
	 * 宾客名称
	 */
	private String guestName;
	
	/**
	 * 创建时间。
	 */
	private Date createAt;
	
	private Double lng;
	
	private Double lat;

	private String mapImgUrl;
	

	/**
	 * 展示酒会时间
	 */
	private String dateAtCN;
	
	/**
	 * 格式
	 */
	private String dateAtForMat;
	

	/**  请求参数 */
	private MultipartFile mapImg;
	
	private String os;
	private String versionCode;
	private String versionName;
	private String osVersion;
	
	private Boolean status;
	private Date modifyAt;
	/**
	 * 展示更新时间 yyyy-MM-dd
	 */
	private String updateAt;
	
	/**楼层 房间**/
	private String floorRoom;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}
	
	public String getFloorRoom() {
		return floorRoom;
	}

	public void setFloorRoom(String floorRoom) {
		this.floorRoom = floorRoom;
	}

	public Date getModifyAt() {
		return modifyAt;
	}

	public void setModifyAt(Date modifyAt) {
		this.modifyAt = modifyAt;
	}

	public String getOs() {
		return os;
	}

	public void setOs(String os) {
		this.os = os;
	}

	public String getVersionCode() {
		return versionCode;
	}

	public void setVersionCode(String versionCode) {
		this.versionCode = versionCode;
	}

	public String getVersionName() {
		return versionName;
	}

	public Long getInviteId() {
		return inviteId;
	}

	public void setInviteId(Long inviteId) {
		this.inviteId = inviteId;
	}

	public void setVersionName(String versionName) {
		this.versionName = versionName;
	}

	public String getOsVersion() {
		return osVersion;
	}

	public void setOsVersion(String osVersion) {
		this.osVersion = osVersion;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public Integer getModelType() {
		return modelType;
	}

	public void setModelType(Integer modelType) {
		this.modelType = modelType;
	}

	public Date getDateAt() {
		return dateAt;
	}

	public void setDateAt(Date dateAt) {
		this.dateAt = dateAt;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getContactMobile() {
		return contactMobile;
	}

	public void setContactMobile(String contactMobile) {
		this.contactMobile = contactMobile;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}
	
	public Double getLng() {
		return lng;
	}

	public void setLng(Double lng) {
		this.lng = lng;
	}

	public Double getLat() {
		return lat;
	}

	public void setLat(Double lat) {
		this.lat = lat;
	}

	public String getCreateAtCN() {
		if (createAt == null) {
			return null;
		}
		return DateFormatProvider.DATE_FORMAT_CN.format(createAt);
	}
	
	public String getDateAtCN() {
		if (dateAt == null) {
			return null;
		}
		return DateFormatProvider.DATE_FULL_FORMAT_DAYCN.format(dateAt);
	}

   public String getUpdateAt() {
	   if (modifyAt == null) {
			return null;
		}
		return DateFormatProvider.DATE_FORMAT.format(modifyAt);
	}

	public void setUpdateAt(String updateAt) {
		this.updateAt = updateAt;
	}

  public String getUpdateAtDetail() {
	   if (modifyAt == null) {
			return null;
		}
	   return DateFormatProvider.DATE_FORMAT_HM.format(modifyAt);
	}

	public MultipartFile getMapImg() {
		return mapImg;
	}

	public void setMapImg(MultipartFile mapImg) {
		this.mapImg = mapImg;
	}

	public void setDateAtCN(String dateAtCN) {
		this.dateAtCN = dateAtCN;
	}

	public String getMapImgUrl() {
		return mapImgUrl;
	}

	public void setMapImgUrl(String mapImgUrl) {
		this.mapImgUrl = mapImgUrl;
	}

	 
	public String getDateAtForMat() {
		if (dateAt == null) {
			return null;
		}
		return DateFormatProvider.DATE_FORMAT_HM.format(dateAt);
	}

	public void setDateAtForMat(String dateAtForMat) {
		this.dateAtForMat = dateAtForMat;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Invitation [id=");
		builder.append(id);
		builder.append(", userId=");
		builder.append(userId);
		builder.append(", name=");
		builder.append(name);
		builder.append(", dateAt=");
		builder.append(dateAt);
		builder.append(", address=");
		builder.append(address);
		builder.append(", lng=");
		builder.append(lng);
		builder.append(", lat=");
		builder.append(lat);
		builder.append(", contactName=");
		builder.append(contactName);
		builder.append(", contactMobile=");
		builder.append(contactMobile);
		builder.append(", text=");
		builder.append(text);
		builder.append(", createAt=");
		builder.append(createAt);
		builder.append("]");
		return builder.toString();
	}


}
