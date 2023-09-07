package com.android.calendar.syncer.model;

import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/Credentials;", "", "userName", "", "password", "certificateAlias", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCertificateAlias", "()Ljava/lang/String;", "getPassword", "type", "Lcom/android/calendar/syncer/model/Credentials$Type;", "getType", "()Lcom/android/calendar/syncer/model/Credentials$Type;", "getUserName", "toString", "Type", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
public final class Credentials
{
  private final String certificateAlias;
  private final String password;
  private final Type type;
  private final String userName;
  
  public Credentials()
  {
    this(null, null, null, 7, null);
  }
  
  public Credentials(String paramString1, String paramString2, String paramString3)
  {
    this.userName = paramString1;
    this.password = paramString2;
    this.certificateAlias = paramString3;
    int i = 0;
    int j;
    if ((paramString3 != null) && (paramString3.length() != 0)) {
      j = 0;
    } else {
      j = 1;
    }
    if (j == 0)
    {
      paramString1 = Type.ClientCertificate;
    }
    else
    {
      if ((paramString1 != null) && (paramString1.length() != 0)) {
        j = 0;
      } else {
        j = 1;
      }
      if (j != 0) {
        break label124;
      }
      if (paramString2 != null)
      {
        j = i;
        if (paramString2.length() != 0) {}
      }
      else
      {
        j = 1;
      }
      if (j != 0) {
        break label124;
      }
      paramString1 = Type.UsernamePassword;
    }
    this.type = paramString1;
    return;
    label124:
    throw new IllegalArgumentException("Either username/password or certificate alias must be set");
  }
  
  public final String getCertificateAlias()
  {
    return this.certificateAlias;
  }
  
  public final String getPassword()
  {
    return this.password;
  }
  
  public final Type getType()
  {
    return this.type;
  }
  
  public final String getUserName()
  {
    return this.userName;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Credentials(type=");
    localStringBuilder.append(this.type);
    localStringBuilder.append(", userName=");
    localStringBuilder.append(this.userName);
    localStringBuilder.append(", certificateAlias=");
    localStringBuilder.append(this.certificateAlias);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/Credentials$Type;", "", "(Ljava/lang/String;I)V", "UsernamePassword", "ClientCertificate", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static enum Type
  {
    static
    {
      ClientCertificate = new Type("ClientCertificate", 1);
    }
    
    private Type() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.Credentials
 * JD-Core Version:    0.7.0.1
 */