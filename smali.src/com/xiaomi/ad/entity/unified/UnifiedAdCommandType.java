package com.xiaomi.ad.entity.unified;

public enum UnifiedAdCommandType
{
  static
  {
    UnifiedAdCommandType localUnifiedAdCommandType = new UnifiedAdCommandType("SET_RECOMMAND_AD_SWITCH_STATE", 0);
    SET_RECOMMAND_AD_SWITCH_STATE = localUnifiedAdCommandType;
    $VALUES = new UnifiedAdCommandType[] { localUnifiedAdCommandType };
  }
  
  private UnifiedAdCommandType() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.unified.UnifiedAdCommandType
 * JD-Core Version:    0.7.0.1
 */