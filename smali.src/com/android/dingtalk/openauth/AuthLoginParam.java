package com.android.dingtalk.openauth;

public class AuthLoginParam
{
  private String mAltSignature;
  private String mAppId;
  private String mNonce;
  private String mPrompt;
  private String mRedirectUri;
  private String mResponseType;
  private String mScope;
  private String mState;
  
  public String getAltSignature()
  {
    return this.mAltSignature;
  }
  
  public String getAppId()
  {
    return this.mAppId;
  }
  
  public String getNonce()
  {
    return this.mNonce;
  }
  
  public String getPrompt()
  {
    return this.mPrompt;
  }
  
  public String getRedirectUri()
  {
    return this.mRedirectUri;
  }
  
  public String getResponseType()
  {
    return this.mResponseType;
  }
  
  public String getScope()
  {
    return this.mScope;
  }
  
  public String getState()
  {
    return this.mState;
  }
  
  public static final class AuthLoginParamBuilder
  {
    private String mAltSignature = "";
    private String mAppId = "";
    private String mNonce = "";
    private String mPrompt = "";
    private String mRedirectUri = "";
    private String mResponseType = "";
    private String mScope = "";
    private String mState = "";
    
    public static AuthLoginParamBuilder newBuilder()
    {
      return new AuthLoginParamBuilder();
    }
    
    public AuthLoginParamBuilder altSignature(String paramString)
    {
      this.mAltSignature = paramString;
      return this;
    }
    
    public AuthLoginParamBuilder appId(String paramString)
    {
      this.mAppId = paramString;
      return this;
    }
    
    public AuthLoginParam build()
    {
      AuthLoginParam localAuthLoginParam = new AuthLoginParam();
      AuthLoginParam.access$002(localAuthLoginParam, this.mState);
      AuthLoginParam.access$102(localAuthLoginParam, this.mNonce);
      AuthLoginParam.access$202(localAuthLoginParam, this.mRedirectUri);
      AuthLoginParam.access$302(localAuthLoginParam, this.mAppId);
      AuthLoginParam.access$402(localAuthLoginParam, this.mScope);
      AuthLoginParam.access$502(localAuthLoginParam, this.mResponseType);
      AuthLoginParam.access$602(localAuthLoginParam, this.mPrompt);
      AuthLoginParam.access$702(localAuthLoginParam, this.mAltSignature);
      return localAuthLoginParam;
    }
    
    public AuthLoginParamBuilder nonce(String paramString)
    {
      this.mNonce = paramString;
      return this;
    }
    
    public AuthLoginParamBuilder prompt(String paramString)
    {
      this.mPrompt = paramString;
      return this;
    }
    
    public AuthLoginParamBuilder redirectUri(String paramString)
    {
      this.mRedirectUri = paramString;
      return this;
    }
    
    public AuthLoginParamBuilder responseType(String paramString)
    {
      this.mResponseType = paramString;
      return this;
    }
    
    public AuthLoginParamBuilder scope(String paramString)
    {
      this.mScope = paramString;
      return this;
    }
    
    public AuthLoginParamBuilder state(String paramString)
    {
      this.mState = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.AuthLoginParam
 * JD-Core Version:    0.7.0.1
 */