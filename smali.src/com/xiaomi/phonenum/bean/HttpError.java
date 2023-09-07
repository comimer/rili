package com.xiaomi.phonenum.bean;

import f7.e;
import f7.e.a;

public enum HttpError
{
  public final int code;
  
  static
  {
    HttpError localHttpError1 = new HttpError("ENCRYPT", 0, 460);
    ENCRYPT = localHttpError1;
    HttpError localHttpError2 = new HttpError("DECRYPT", 1, 461);
    DECRYPT = localHttpError2;
    HttpError localHttpError3 = new HttpError("DATA_NOT_ENABLED", 2, 462);
    DATA_NOT_ENABLED = localHttpError3;
    HttpError localHttpError4 = new HttpError("NO_CHANGE_NETWORK_STATE_PERMISSION", 3, 463);
    NO_CHANGE_NETWORK_STATE_PERMISSION = localHttpError4;
    HttpError localHttpError5 = new HttpError("CELLULAR_NETWORK_NOT_AVAILABLE", 4, 464);
    CELLULAR_NETWORK_NOT_AVAILABLE = localHttpError5;
    HttpError localHttpError6 = new HttpError("CELLULAR_NETWORK_IO_EXCEPTION", 5, 600);
    CELLULAR_NETWORK_IO_EXCEPTION = localHttpError6;
    $VALUES = new HttpError[] { localHttpError1, localHttpError2, localHttpError3, localHttpError4, localHttpError5, localHttpError6 };
  }
  
  private HttpError(int paramInt)
  {
    this.code = paramInt;
  }
  
  public e result()
  {
    return new e.a().c(this.code).a(toString()).b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.bean.HttpError
 * JD-Core Version:    0.7.0.1
 */