package androidx.core.graphics.drawable;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.util.h;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;

public class IconCompat
  extends CustomVersionedParcelable
{
  static final PorterDuff.Mode k = PorterDuff.Mode.SRC_IN;
  public int a;
  Object b;
  public byte[] c;
  public Parcelable d;
  public int e;
  public int f;
  public ColorStateList g;
  PorterDuff.Mode h;
  public String i;
  public String j;
  
  public IconCompat()
  {
    this.a = -1;
    this.c = null;
    this.d = null;
    this.e = 0;
    this.f = 0;
    this.g = null;
    this.h = k;
    this.i = null;
  }
  
  IconCompat(int paramInt)
  {
    this.c = null;
    this.d = null;
    this.e = 0;
    this.f = 0;
    this.g = null;
    this.h = k;
    this.i = null;
    this.a = paramInt;
  }
  
  public static IconCompat a(Icon paramIcon)
  {
    return a.a(paramIcon);
  }
  
  public static IconCompat b(Uri paramUri)
  {
    androidx.core.util.c.c(paramUri);
    return c(paramUri.toString());
  }
  
  public static IconCompat c(String paramString)
  {
    androidx.core.util.c.c(paramString);
    IconCompat localIconCompat = new IconCompat(6);
    localIconCompat.b = paramString;
    return localIconCompat;
  }
  
  public static IconCompat d(Uri paramUri)
  {
    androidx.core.util.c.c(paramUri);
    return e(paramUri.toString());
  }
  
  public static IconCompat e(String paramString)
  {
    androidx.core.util.c.c(paramString);
    IconCompat localIconCompat = new IconCompat(4);
    localIconCompat.b = paramString;
    return localIconCompat;
  }
  
  public static IconCompat f(Resources paramResources, String paramString, int paramInt)
  {
    androidx.core.util.c.c(paramString);
    if (paramInt != 0)
    {
      IconCompat localIconCompat = new IconCompat(2);
      localIconCompat.e = paramInt;
      if (paramResources != null) {
        try
        {
          localIconCompat.b = paramResources.getResourceName(paramInt);
        }
        catch (Resources.NotFoundException paramResources)
        {
          throw new IllegalArgumentException("Icon resource cannot be found");
        }
      } else {
        localIconCompat.b = paramString;
      }
      localIconCompat.j = paramString;
      return localIconCompat;
    }
    throw new IllegalArgumentException("Drawable resource ID must not be 0");
  }
  
  private static String o(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "UNKNOWN";
    case 6: 
      return "URI_MASKABLE";
    case 5: 
      return "BITMAP_MASKABLE";
    case 4: 
      return "URI";
    case 3: 
      return "DATA";
    case 2: 
      return "RESOURCE";
    }
    return "BITMAP";
  }
  
  public int g()
  {
    int m = this.a;
    if (m == -1) {
      return a.b(this.b);
    }
    if (m == 2) {
      return this.e;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("called getResId() on ");
    localStringBuilder.append(this);
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String h()
  {
    int m = this.a;
    if (m == -1) {
      return a.c(this.b);
    }
    if (m == 2)
    {
      localObject = this.j;
      if ((localObject != null) && (!TextUtils.isEmpty((CharSequence)localObject))) {
        return this.j;
      }
      return ((String)this.b).split(":", -1)[0];
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("called getResPackage() on ");
    ((StringBuilder)localObject).append(this);
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  public Uri i()
  {
    int m = this.a;
    if (m == -1) {
      return a.e(this.b);
    }
    if ((m != 4) && (m != 6))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("called getUri() on ");
      localStringBuilder.append(this);
      throw new IllegalStateException(localStringBuilder.toString());
    }
    return Uri.parse((String)this.b);
  }
  
  public InputStream j(Context paramContext)
  {
    Uri localUri = i();
    String str = localUri.getScheme();
    if ((!"content".equals(str)) && (!"file".equals(str))) {
      try
      {
        paramContext = new java/io/File;
        paramContext.<init>((String)this.b);
        paramContext = new FileInputStream(paramContext);
        return paramContext;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        paramContext = new StringBuilder();
        paramContext.append("Unable to load image from path: ");
        paramContext.append(localUri);
        Log.w("IconCompat", paramContext.toString(), localFileNotFoundException);
      }
    } else {
      try
      {
        paramContext = paramContext.getContentResolver().openInputStream(localUri);
        return paramContext;
      }
      catch (Exception localException)
      {
        paramContext = new StringBuilder();
        paramContext.append("Unable to load image from URI: ");
        paramContext.append(localUri);
        Log.w("IconCompat", paramContext.toString(), localException);
      }
    }
    return null;
  }
  
  public void k()
  {
    this.h = PorterDuff.Mode.valueOf(this.i);
    Object localObject;
    switch (this.a)
    {
    case 0: 
    default: 
      break;
    case 3: 
      this.b = this.c;
      break;
    case 2: 
    case 4: 
    case 6: 
      localObject = new String(this.c, Charset.forName("UTF-16"));
      this.b = localObject;
      if ((this.a == 2) && (this.j == null)) {
        this.j = localObject.split(":", -1)[0];
      }
      break;
    case 1: 
    case 5: 
      localObject = this.d;
      if (localObject != null)
      {
        this.b = localObject;
      }
      else
      {
        localObject = this.c;
        this.b = localObject;
        this.a = 3;
        this.e = 0;
        this.f = localObject.length;
      }
      break;
    case -1: 
      localObject = this.d;
      if (localObject != null) {
        this.b = localObject;
      } else {
        throw new IllegalArgumentException("Invalid icon");
      }
      break;
    }
  }
  
  public void l(boolean paramBoolean)
  {
    this.i = this.h.name();
    switch (this.a)
    {
    case 0: 
    default: 
      break;
    case 4: 
    case 6: 
      this.c = this.b.toString().getBytes(Charset.forName("UTF-16"));
      break;
    case 3: 
      this.c = ((byte[])this.b);
      break;
    case 2: 
      this.c = ((String)this.b).getBytes(Charset.forName("UTF-16"));
      break;
    case 1: 
    case 5: 
      if (paramBoolean)
      {
        Bitmap localBitmap = (Bitmap)this.b;
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        localBitmap.compress(Bitmap.CompressFormat.PNG, 90, localByteArrayOutputStream);
        this.c = localByteArrayOutputStream.toByteArray();
      }
      else
      {
        this.d = ((Parcelable)this.b);
      }
      break;
    case -1: 
      if (!paramBoolean) {
        this.d = ((Parcelable)this.b);
      } else {
        throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
      }
      break;
    }
  }
  
  @Deprecated
  public Icon m()
  {
    return n(null);
  }
  
  public Icon n(Context paramContext)
  {
    return a.g(this, paramContext);
  }
  
  public String toString()
  {
    if (this.a == -1) {
      return String.valueOf(this.b);
    }
    StringBuilder localStringBuilder = new StringBuilder("Icon(typ=");
    localStringBuilder.append(o(this.a));
    switch (this.a)
    {
    default: 
      break;
    case 4: 
    case 6: 
      localStringBuilder.append(" uri=");
      localStringBuilder.append(this.b);
      break;
    case 3: 
      localStringBuilder.append(" len=");
      localStringBuilder.append(this.e);
      if (this.f != 0)
      {
        localStringBuilder.append(" off=");
        localStringBuilder.append(this.f);
      }
      break;
    case 2: 
      localStringBuilder.append(" pkg=");
      localStringBuilder.append(this.j);
      localStringBuilder.append(" id=");
      localStringBuilder.append(String.format("0x%08x", new Object[] { Integer.valueOf(g()) }));
      break;
    case 1: 
    case 5: 
      localStringBuilder.append(" size=");
      localStringBuilder.append(((Bitmap)this.b).getWidth());
      localStringBuilder.append("x");
      localStringBuilder.append(((Bitmap)this.b).getHeight());
    }
    if (this.g != null)
    {
      localStringBuilder.append(" tint=");
      localStringBuilder.append(this.g);
    }
    if (this.h != k)
    {
      localStringBuilder.append(" mode=");
      localStringBuilder.append(this.h);
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  static class a
  {
    static IconCompat a(Object paramObject)
    {
      h.g(paramObject);
      int i = d(paramObject);
      if (i != 2)
      {
        if (i != 4)
        {
          if (i != 6)
          {
            IconCompat localIconCompat = new IconCompat(-1);
            localIconCompat.b = paramObject;
            return localIconCompat;
          }
          return IconCompat.b(e(paramObject));
        }
        return IconCompat.d(e(paramObject));
      }
      return IconCompat.f(null, c(paramObject), b(paramObject));
    }
    
    static int b(Object paramObject)
    {
      if (Build.VERSION.SDK_INT >= 28) {
        return IconCompat.c.a(paramObject);
      }
      try
      {
        int i = ((Integer)paramObject.getClass().getMethod("getResId", new Class[0]).invoke(paramObject, new Object[0])).intValue();
        return i;
      }
      catch (NoSuchMethodException paramObject)
      {
        Log.e("IconCompat", "Unable to get icon resource", paramObject);
        return 0;
      }
      catch (InvocationTargetException paramObject)
      {
        Log.e("IconCompat", "Unable to get icon resource", paramObject);
        return 0;
      }
      catch (IllegalAccessException paramObject)
      {
        Log.e("IconCompat", "Unable to get icon resource", paramObject);
      }
      return 0;
    }
    
    static String c(Object paramObject)
    {
      if (Build.VERSION.SDK_INT >= 28) {
        return IconCompat.c.b(paramObject);
      }
      try
      {
        paramObject = (String)paramObject.getClass().getMethod("getResPackage", new Class[0]).invoke(paramObject, new Object[0]);
        return paramObject;
      }
      catch (NoSuchMethodException paramObject)
      {
        Log.e("IconCompat", "Unable to get icon package", paramObject);
        return null;
      }
      catch (InvocationTargetException paramObject)
      {
        Log.e("IconCompat", "Unable to get icon package", paramObject);
        return null;
      }
      catch (IllegalAccessException paramObject)
      {
        Log.e("IconCompat", "Unable to get icon package", paramObject);
      }
      return null;
    }
    
    static int d(Object paramObject)
    {
      if (Build.VERSION.SDK_INT >= 28) {
        return IconCompat.c.c(paramObject);
      }
      try
      {
        int i = ((Integer)paramObject.getClass().getMethod("getType", new Class[0]).invoke(paramObject, new Object[0])).intValue();
        return i;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unable to get icon type ");
        localStringBuilder.append(paramObject);
        Log.e("IconCompat", localStringBuilder.toString(), localNoSuchMethodException);
        return -1;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unable to get icon type ");
        localStringBuilder.append(paramObject);
        Log.e("IconCompat", localStringBuilder.toString(), localInvocationTargetException);
        return -1;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unable to get icon type ");
        localStringBuilder.append(paramObject);
        Log.e("IconCompat", localStringBuilder.toString(), localIllegalAccessException);
      }
      return -1;
    }
    
    static Uri e(Object paramObject)
    {
      if (Build.VERSION.SDK_INT >= 28) {
        return IconCompat.c.d(paramObject);
      }
      try
      {
        paramObject = (Uri)paramObject.getClass().getMethod("getUri", new Class[0]).invoke(paramObject, new Object[0]);
        return paramObject;
      }
      catch (NoSuchMethodException paramObject)
      {
        Log.e("IconCompat", "Unable to get icon uri", paramObject);
        return null;
      }
      catch (InvocationTargetException paramObject)
      {
        Log.e("IconCompat", "Unable to get icon uri", paramObject);
        return null;
      }
      catch (IllegalAccessException paramObject)
      {
        Log.e("IconCompat", "Unable to get icon uri", paramObject);
      }
      return null;
    }
    
    static Drawable f(Icon paramIcon, Context paramContext)
    {
      return paramIcon.loadDrawable(paramContext);
    }
    
    static Icon g(IconCompat paramIconCompat, Context paramContext)
    {
      switch (paramIconCompat.a)
      {
      case 0: 
      default: 
        throw new IllegalArgumentException("Unknown type");
      case 6: 
        if (Build.VERSION.SDK_INT >= 30)
        {
          paramContext = IconCompat.d.a(paramIconCompat.i());
        }
        else if (paramContext != null)
        {
          paramContext = paramIconCompat.j(paramContext);
          if (paramContext != null)
          {
            paramContext = IconCompat.b.b(BitmapFactory.decodeStream(paramContext));
          }
          else
          {
            paramContext = new StringBuilder();
            paramContext.append("Cannot load adaptive icon from uri: ");
            paramContext.append(paramIconCompat.i());
            throw new IllegalStateException(paramContext.toString());
          }
        }
        else
        {
          paramContext = new StringBuilder();
          paramContext.append("Context is required to resolve the file uri of the icon: ");
          paramContext.append(paramIconCompat.i());
          throw new IllegalArgumentException(paramContext.toString());
        }
      case 5: 
        paramContext = IconCompat.b.b((Bitmap)paramIconCompat.b);
        break;
      case 4: 
        paramContext = Icon.createWithContentUri((String)paramIconCompat.b);
        break;
      case 3: 
        paramContext = Icon.createWithData((byte[])paramIconCompat.b, paramIconCompat.e, paramIconCompat.f);
        break;
      case 2: 
        paramContext = Icon.createWithResource(paramIconCompat.h(), paramIconCompat.e);
        break;
      case 1: 
        paramContext = Icon.createWithBitmap((Bitmap)paramIconCompat.b);
        ColorStateList localColorStateList = paramIconCompat.g;
        if (localColorStateList != null) {
          paramContext.setTintList(localColorStateList);
        }
        paramIconCompat = paramIconCompat.h;
        if (paramIconCompat != IconCompat.k) {
          paramContext.setTintMode(paramIconCompat);
        }
        return paramContext;
      }
      return (Icon)paramIconCompat.b;
    }
  }
  
  static class b
  {
    static Drawable a(Drawable paramDrawable1, Drawable paramDrawable2)
    {
      return new AdaptiveIconDrawable(paramDrawable1, paramDrawable2);
    }
    
    static Icon b(Bitmap paramBitmap)
    {
      return Icon.createWithAdaptiveBitmap(paramBitmap);
    }
  }
  
  static class c
  {
    static int a(Object paramObject)
    {
      return b.a((Icon)paramObject);
    }
    
    static String b(Object paramObject)
    {
      return e.a((Icon)paramObject);
    }
    
    static int c(Object paramObject)
    {
      return d.a((Icon)paramObject);
    }
    
    static Uri d(Object paramObject)
    {
      return c.a((Icon)paramObject);
    }
  }
  
  static class d
  {
    static Icon a(Uri paramUri)
    {
      return f.a(paramUri);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.drawable.IconCompat
 * JD-Core Version:    0.7.0.1
 */