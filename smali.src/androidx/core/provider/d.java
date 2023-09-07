package androidx.core.provider;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.CancellationSignal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

class d
{
  private static final Comparator<byte[]> a = new c();
  
  private static List<byte[]> b(Signature[] paramArrayOfSignature)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramArrayOfSignature.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(paramArrayOfSignature[j].toByteArray());
    }
    return localArrayList;
  }
  
  private static boolean c(List<byte[]> paramList1, List<byte[]> paramList2)
  {
    if (paramList1.size() != paramList2.size()) {
      return false;
    }
    for (int i = 0; i < paramList1.size(); i++) {
      if (!Arrays.equals((byte[])paramList1.get(i), (byte[])paramList2.get(i))) {
        return false;
      }
    }
    return true;
  }
  
  private static List<List<byte[]>> d(e parame, Resources paramResources)
  {
    if (parame.b() != null) {
      return parame.b();
    }
    return androidx.core.content.res.e.c(paramResources, parame.c());
  }
  
  static g.a e(Context paramContext, e parame, CancellationSignal paramCancellationSignal)
    throws PackageManager.NameNotFoundException
  {
    ProviderInfo localProviderInfo = f(paramContext.getPackageManager(), parame, paramContext.getResources());
    if (localProviderInfo == null) {
      return g.a.a(1, null);
    }
    return g.a.a(0, h(paramContext, parame, localProviderInfo.authority, paramCancellationSignal));
  }
  
  static ProviderInfo f(PackageManager paramPackageManager, e parame, Resources paramResources)
    throws PackageManager.NameNotFoundException
  {
    String str = parame.e();
    int i = 0;
    ProviderInfo localProviderInfo = paramPackageManager.resolveContentProvider(str, 0);
    if (localProviderInfo != null)
    {
      if (localProviderInfo.packageName.equals(parame.f()))
      {
        paramPackageManager = b(paramPackageManager.getPackageInfo(localProviderInfo.packageName, 64).signatures);
        Collections.sort(paramPackageManager, a);
        paramResources = d(parame, paramResources);
        while (i < paramResources.size())
        {
          parame = new ArrayList((Collection)paramResources.get(i));
          Collections.sort(parame, a);
          if (c(paramPackageManager, parame)) {
            return localProviderInfo;
          }
          i++;
        }
        return null;
      }
      paramPackageManager = new StringBuilder();
      paramPackageManager.append("Found content provider ");
      paramPackageManager.append(str);
      paramPackageManager.append(", but package was not ");
      paramPackageManager.append(parame.f());
      throw new PackageManager.NameNotFoundException(paramPackageManager.toString());
    }
    paramPackageManager = new StringBuilder();
    paramPackageManager.append("No package found for authority: ");
    paramPackageManager.append(str);
    throw new PackageManager.NameNotFoundException(paramPackageManager.toString());
  }
  
  static g.b[] h(Context paramContext, e parame, String paramString, CancellationSignal paramCancellationSignal)
  {
    ArrayList localArrayList = new ArrayList();
    Uri localUri1 = new Uri.Builder().scheme("content").authority(paramString).build();
    Uri localUri2 = new Uri.Builder().scheme("content").authority(paramString).appendPath("file").build();
    Object localObject = null;
    paramString = localObject;
    try
    {
      paramContext = paramContext.getContentResolver();
      paramString = localObject;
      parame = parame.g();
      paramString = localObject;
      parame = a.a(paramContext, localUri1, new String[] { "_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code" }, "query = ?", new String[] { parame }, null, paramCancellationSignal);
      paramContext = localArrayList;
      if (parame != null)
      {
        paramContext = localArrayList;
        paramString = parame;
        if (parame.getCount() > 0)
        {
          paramString = parame;
          int i = parame.getColumnIndex("result_code");
          paramString = parame;
          paramCancellationSignal = new java/util/ArrayList;
          paramString = parame;
          paramCancellationSignal.<init>();
          paramString = parame;
          int j = parame.getColumnIndex("_id");
          paramString = parame;
          int k = parame.getColumnIndex("file_id");
          paramString = parame;
          int m = parame.getColumnIndex("font_ttc_index");
          paramString = parame;
          int n = parame.getColumnIndex("font_weight");
          paramString = parame;
          int i1 = parame.getColumnIndex("font_italic");
          for (;;)
          {
            paramString = parame;
            if (!parame.moveToNext()) {
              break;
            }
            int i2;
            if (i != -1)
            {
              paramString = parame;
              i2 = parame.getInt(i);
            }
            else
            {
              i2 = 0;
            }
            int i3;
            if (m != -1)
            {
              paramString = parame;
              i3 = parame.getInt(m);
            }
            else
            {
              i3 = 0;
            }
            if (k == -1)
            {
              paramString = parame;
              paramContext = ContentUris.withAppendedId(localUri1, parame.getLong(j));
            }
            else
            {
              paramString = parame;
              paramContext = ContentUris.withAppendedId(localUri2, parame.getLong(k));
            }
            int i4 = i2;
            if (n != -1)
            {
              paramString = parame;
              i2 = parame.getInt(n);
            }
            else
            {
              i2 = 400;
            }
            if (i1 != -1)
            {
              paramString = parame;
              if (parame.getInt(i1) == 1)
              {
                bool = true;
                break label402;
              }
            }
            boolean bool = false;
            label402:
            paramString = parame;
            paramCancellationSignal.add(g.b.a(paramContext, i3, i2, bool, i4));
          }
          paramContext = paramCancellationSignal;
        }
      }
      return (g.b[])paramContext.toArray(new g.b[0]);
    }
    finally
    {
      if (paramString != null) {
        paramString.close();
      }
    }
  }
  
  static class a
  {
    static Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, Object paramObject)
    {
      return paramContentResolver.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, (CancellationSignal)paramObject);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.provider.d
 * JD-Core Version:    0.7.0.1
 */