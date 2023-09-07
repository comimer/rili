package androidx.room;

public enum FtsOptions$Order
{
  static
  {
    Order localOrder1 = new Order("ASC", 0);
    ASC = localOrder1;
    Order localOrder2 = new Order("DESC", 1);
    DESC = localOrder2;
    $VALUES = new Order[] { localOrder1, localOrder2 };
  }
  
  private FtsOptions$Order() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.FtsOptions.Order
 * JD-Core Version:    0.7.0.1
 */