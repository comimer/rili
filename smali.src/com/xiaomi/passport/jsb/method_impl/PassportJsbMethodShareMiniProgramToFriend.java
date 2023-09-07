package com.xiaomi.passport.jsb.method_impl;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.view.View;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.jsb.ParcelablePassportJsbMethod;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import m6.d;
import org.json.JSONException;
import org.json.JSONObject;

public class PassportJsbMethodShareMiniProgramToFriend
  extends ParcelablePassportJsbMethod
{
  public static final Parcelable.Creator<ParcelablePassportJsbMethod> CREATOR = new a();
  public static final String TAG = "PassportJsbMethodShareMiniProgramToFriend";
  public static final String WEIXIN_SHARE_RESULT = "wei_xin_share_result";
  public static final String WEIXIN_SHARE_RESULT_ERR_CODE = "wei_xin_share_result_err_code";
  public static final String WEIXIN_SHARE_RESULT_ERR_STR = "wei_xin_share_result_err_str";
  private p6.a mPassportWXAPIEventHandler;
  private b mShareResultBroadcastReceiver;
  private String mWeiXinAppID;
  private o6.a mWeixinShareTool;
  
  public PassportJsbMethodShareMiniProgramToFriend(Parcel paramParcel)
  {
    this.mWeiXinAppID = paramParcel.readString();
  }
  
  public PassportJsbMethodShareMiniProgramToFriend(String paramString)
  {
    this.mWeiXinAppID = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getName()
  {
    return "shareMiniProgramToFriend";
  }
  
  public d invoke(com.xiaomi.passport.webview.a parama, JSONObject paramJSONObject)
  {
    Object localObject = (Activity)parama.getContext();
    if (this.mWeixinShareTool == null) {
      this.mWeixinShareTool = new o6.a((Activity)localObject, this.mWeiXinAppID);
    }
    if (this.mPassportWXAPIEventHandler == null)
    {
      localObject = new p6.a((Activity)localObject);
      this.mPassportWXAPIEventHandler = ((p6.a)localObject);
      p6.c.a = (IWXAPIEventHandler)localObject;
    }
    localObject = paramJSONObject.optString("mediaMessageJson");
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return new d(false);
    }
    paramJSONObject = paramJSONObject.optString("callbackId");
    this.mWeixinShareTool.a(1, "WXMiniProgramObject", (String)localObject);
    if (this.mShareResultBroadcastReceiver == null) {
      this.mShareResultBroadcastReceiver = new b(parama.getContext());
    }
    this.mShareResultBroadcastReceiver.a(paramJSONObject, parama);
    return new d(true);
  }
  
  public void release(com.xiaomi.passport.webview.a parama)
  {
    parama = this.mShareResultBroadcastReceiver;
    if (parama != null) {
      parama.b();
    }
    if (this.mPassportWXAPIEventHandler != null) {
      p6.c.a = null;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.mWeiXinAppID);
  }
  
  class a
    implements Parcelable.Creator<ParcelablePassportJsbMethod>
  {
    public ParcelablePassportJsbMethod a(Parcel paramParcel)
    {
      return new PassportJsbMethodShareMiniProgramToFriend(paramParcel);
    }
    
    public ParcelablePassportJsbMethod[] b(int paramInt)
    {
      return new PassportJsbMethodShareMiniProgramToFriend[paramInt];
    }
  }
  
  private static class b
    extends BroadcastReceiver
  {
    private Map<String, com.xiaomi.passport.webview.a> a = new HashMap();
    private boolean b = false;
    private Context c;
    
    public b(Context paramContext)
    {
      this.c = paramContext;
    }
    
    public void a(String paramString, com.xiaomi.passport.webview.a parama)
    {
      this.a.put(paramString, parama);
      if (this.b) {
        return;
      }
      paramString = new IntentFilter("wei_xin_share_result");
      k6.a.a(this.c, this, paramString, false);
      this.b = true;
    }
    
    public void b()
    {
      if (this.b) {
        this.c.unregisterReceiver(this);
      }
      this.b = false;
    }
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      int i = paramIntent.getIntExtra("wei_xin_share_result_err_code", -1);
      Object localObject = paramIntent.getStringExtra("wei_xin_share_result_err_str");
      paramContext = new JSONObject();
      if (i != 0)
      {
        paramIntent = new StringBuilder();
        paramIntent.append("weixin default error: ");
        paramIntent.append((String)localObject);
        paramIntent.append(" errorcode : ");
        paramIntent.append(i);
        b.g("PassportJsbMethodShareMiniProgramToFriend", paramIntent.toString());
        try
        {
          paramContext.put("result", false);
        }
        catch (JSONException paramIntent)
        {
          new IllegalStateException(paramIntent);
        }
      }
      else
      {
        b.g("PassportJsbMethodShareMiniProgramToFriend", "weixin share_success");
        try
        {
          paramContext.put("result", true);
        }
        catch (JSONException paramIntent)
        {
          paramIntent.printStackTrace();
        }
      }
      localObject = this.a.keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        paramIntent = (String)((Iterator)localObject).next();
        m6.a.b((com.xiaomi.passport.webview.a)this.a.get(paramIntent), paramIntent, paramContext);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.jsb.method_impl.PassportJsbMethodShareMiniProgramToFriend
 * JD-Core Version:    0.7.0.1
 */