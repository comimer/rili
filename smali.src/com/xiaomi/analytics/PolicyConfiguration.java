package com.xiaomi.analytics;

import g6.a;

public class PolicyConfiguration
{
  private Privacy a;
  
  private void a(a parama)
  {
    Privacy localPrivacy = this.a;
    if ((localPrivacy != null) && (parama != null)) {
      if (localPrivacy == Privacy.NO) {
        parama.setDefaultPolicy("privacy_policy", "privacy_no");
      } else {
        parama.setDefaultPolicy("privacy_policy", "privacy_user");
      }
    }
  }
  
  public void apply(a parama)
  {
    if (parama != null) {
      a(parama);
    }
  }
  
  public PolicyConfiguration setPrivacy(Privacy paramPrivacy)
  {
    this.a = paramPrivacy;
    return this;
  }
  
  public static enum Privacy
  {
    static
    {
      Privacy localPrivacy1 = new Privacy("NO", 0);
      NO = localPrivacy1;
      Privacy localPrivacy2 = new Privacy("USER", 1);
      USER = localPrivacy2;
      $VALUES = new Privacy[] { localPrivacy1, localPrivacy2 };
    }
    
    private Privacy() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.PolicyConfiguration
 * JD-Core Version:    0.7.0.1
 */