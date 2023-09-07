package com.android.ex.chips;

import android.content.res.Resources;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;

class h
{
  public static final c a;
  public static final c b;
  
  static
  {
    Uri localUri1 = ContactsContract.CommonDataKinds.Phone.CONTENT_FILTER_URI;
    Uri localUri2 = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
    a = new a(new String[] { "display_name", "data1", "data2", "data3", "contact_id", "_id", "photo_thumb_uri", "display_name_source", "lookup", "mimetype" }, localUri1, localUri2);
    localUri2 = ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI;
    localUri1 = ContactsContract.CommonDataKinds.Email.CONTENT_URI;
    b = new b(new String[] { "display_name", "data1", "data2", "data3", "contact_id", "_id", "photo_thumb_uri", "display_name_source", "lookup", "mimetype" }, localUri2, localUri1);
  }
  
  class a
    extends h.c
  {
    a(Uri paramUri1, Uri paramUri2)
    {
      super(paramUri1, paramUri2);
    }
    
    public CharSequence d(Resources paramResources, int paramInt, CharSequence paramCharSequence)
    {
      return ContactsContract.CommonDataKinds.Phone.getTypeLabel(paramResources, paramInt, paramCharSequence);
    }
  }
  
  class b
    extends h.c
  {
    b(Uri paramUri1, Uri paramUri2)
    {
      super(paramUri1, paramUri2);
    }
    
    public CharSequence d(Resources paramResources, int paramInt, CharSequence paramCharSequence)
    {
      return ContactsContract.CommonDataKinds.Email.getTypeLabel(paramResources, paramInt, paramCharSequence);
    }
  }
  
  static abstract class c
  {
    private final String[] a;
    private final Uri b;
    private final Uri c;
    
    public c(String[] paramArrayOfString, Uri paramUri1, Uri paramUri2)
    {
      this.a = paramArrayOfString;
      this.b = paramUri1;
      this.c = paramUri2;
    }
    
    public Uri a()
    {
      return this.b;
    }
    
    public Uri b()
    {
      return this.c;
    }
    
    public String[] c()
    {
      return this.a;
    }
    
    public abstract CharSequence d(Resources paramResources, int paramInt, CharSequence paramCharSequence);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.h
 * JD-Core Version:    0.7.0.1
 */