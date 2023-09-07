package com.sun.mail.imap.protocol;

import com.sun.mail.iap.c;
import com.sun.mail.util.a;
import java.util.ArrayList;
import java.util.List;

public class f
  extends c
{
  private int f;
  
  public int i()
  {
    return this.f;
  }
  
  public String[] j()
  {
    g();
    byte[] arrayOfByte = this.c;
    int i = this.a;
    if (arrayOfByte[i] != 40) {
      return null;
    }
    this.a = (i + 1);
    ArrayList localArrayList = new ArrayList();
    int j;
    int m;
    for (i = this.a;; i = m)
    {
      arrayOfByte = this.c;
      j = this.a;
      int k = arrayOfByte[j];
      if (k == 41) {
        break;
      }
      m = i;
      if (k == 32)
      {
        localArrayList.add(a.e(arrayOfByte, i, j));
        m = this.a + 1;
      }
      this.a += 1;
    }
    if (j > i) {
      localArrayList.add(a.e(arrayOfByte, i, j));
    }
    this.a += 1;
    i = localArrayList.size();
    if (i > 0) {
      return (String[])localArrayList.toArray(new String[i]);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.imap.protocol.f
 * JD-Core Version:    0.7.0.1
 */