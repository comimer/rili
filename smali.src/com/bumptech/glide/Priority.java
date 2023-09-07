package com.bumptech.glide;

public enum Priority
{
  static
  {
    Priority localPriority1 = new Priority("IMMEDIATE", 0);
    IMMEDIATE = localPriority1;
    Priority localPriority2 = new Priority("HIGH", 1);
    HIGH = localPriority2;
    Priority localPriority3 = new Priority("NORMAL", 2);
    NORMAL = localPriority3;
    Priority localPriority4 = new Priority("LOW", 3);
    LOW = localPriority4;
    $VALUES = new Priority[] { localPriority1, localPriority2, localPriority3, localPriority4 };
  }
  
  private Priority() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.Priority
 * JD-Core Version:    0.7.0.1
 */