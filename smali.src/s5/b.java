package s5;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.Set;

public class b
{
  private final Context a;
  private final SQLiteDatabase b;
  
  public b(Context paramContext, SQLiteDatabase paramSQLiteDatabase)
  {
    this.a = paramContext;
    this.b = paramSQLiteDatabase;
  }
  
  private Cursor b(Cursor paramCursor)
  {
    if (paramCursor == null)
    {
      com.xiaomi.accountsdk.utils.b.g("SecureDatabase", "query: null cursor");
      return null;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("query: cursor count=");
    ((StringBuilder)localObject).append(paramCursor.getCount());
    com.xiaomi.accountsdk.utils.b.g("SecureDatabase", ((StringBuilder)localObject).toString());
    localObject = new MatrixCursor(paramCursor.getColumnNames());
    int i = ((AbstractCursor)localObject).getColumnCount();
    while (paramCursor.moveToNext())
    {
      Object[] arrayOfObject = new Object[i];
      for (int j = 0; j < i; j++)
      {
        int k = paramCursor.getType(j);
        if (k != 0)
        {
          if (k != 1)
          {
            if (k != 2)
            {
              if (k != 3)
              {
                if (k == 4) {
                  arrayOfObject[j] = paramCursor.getBlob(j);
                } else {
                  throw new IllegalStateException("unknown data type");
                }
              }
              else {
                arrayOfObject[j] = c(paramCursor.getString(j));
              }
            }
            else {
              arrayOfObject[j] = Double.valueOf(paramCursor.getDouble(j));
            }
          }
          else {
            arrayOfObject[j] = Long.valueOf(paramCursor.getLong(j));
          }
        }
        else {
          arrayOfObject[j] = null;
        }
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("query: row=");
      localStringBuilder.append(m(arrayOfObject));
      com.xiaomi.accountsdk.utils.b.g("SecureDatabase", localStringBuilder.toString());
      ((MatrixCursor)localObject).addRow(arrayOfObject);
    }
    return localObject;
  }
  
  private String c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramString;
    }
    return a.b(this.a, paramString);
  }
  
  private ContentValues e(ContentValues paramContentValues)
  {
    if (paramContentValues == null) {
      return null;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.putAll(paramContentValues);
    Iterator localIterator = paramContentValues.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramContentValues.get(str);
      if ((localObject instanceof String)) {
        localContentValues.put(str, f((String)localObject));
      }
    }
    return localContentValues;
  }
  
  private String f(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramString;
    }
    return a.d(this.a, paramString);
  }
  
  private String[] g(Object[] paramArrayOfObject)
  {
    String[] arrayOfString;
    if (paramArrayOfObject == null) {
      arrayOfString = null;
    } else {
      arrayOfString = new String[paramArrayOfObject.length];
    }
    if (paramArrayOfObject != null) {
      for (int i = 0; i < paramArrayOfObject.length; i++)
      {
        Object localObject = paramArrayOfObject[i];
        if ((localObject instanceof String)) {
          arrayOfString[i] = f((String)localObject);
        } else {
          arrayOfString[i] = String.valueOf(localObject);
        }
      }
    }
    return arrayOfString;
  }
  
  private static String m(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null) {
      return n(null);
    }
    int i = paramArrayOfObject.length;
    int j = 0;
    if (i == 0) {
      return n(new String[0]);
    }
    String[] arrayOfString = new String[paramArrayOfObject.length];
    while (j < paramArrayOfObject.length)
    {
      arrayOfString[j] = String.valueOf(paramArrayOfObject[j]);
      j++;
    }
    return n(arrayOfString);
  }
  
  private static String n(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {
      return "null";
    }
    if (paramArrayOfString.length == 0) {
      return "empty";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append(String.join(",", paramArrayOfString));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public void a()
  {
    this.b.beginTransaction();
  }
  
  public int d(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    int i = this.b.delete(paramString1, paramString2, g(paramArrayOfObject));
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("update: ");
    localStringBuilder.append(paramString1);
    localStringBuilder.append(", where");
    localStringBuilder.append(paramString2);
    localStringBuilder.append(", args=");
    localStringBuilder.append(m(paramArrayOfObject));
    localStringBuilder.append(", result=");
    localStringBuilder.append(i);
    com.xiaomi.accountsdk.utils.b.g("SecureDatabase", localStringBuilder.toString());
    return i;
  }
  
  public void h()
  {
    this.b.endTransaction();
  }
  
  public long i(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    long l = this.b.insert(paramString1, paramString2, e(paramContentValues));
    paramString2 = new StringBuilder();
    paramString2.append("update: ");
    paramString2.append(paramString1);
    paramString2.append(", values=");
    paramString2.append(paramContentValues);
    paramString2.append(", result=");
    paramString2.append(l);
    com.xiaomi.accountsdk.utils.b.g("SecureDatabase", paramString2.toString());
    return l;
  }
  
  public Cursor j(boolean paramBoolean, String paramString1, String[] paramArrayOfString, String paramString2, Object[] paramArrayOfObject, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    Cursor localCursor = this.b.query(paramBoolean, paramString1, paramArrayOfString, paramString2, g(paramArrayOfObject), paramString3, paramString4, paramString5, paramString6);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("query: ");
    localStringBuilder.append(paramString1);
    localStringBuilder.append(", columns=");
    localStringBuilder.append(n(paramArrayOfString));
    localStringBuilder.append(", selection=");
    localStringBuilder.append(paramString2);
    localStringBuilder.append(", selectionArgs=");
    localStringBuilder.append(m(paramArrayOfObject));
    localStringBuilder.append(", groupBy=");
    localStringBuilder.append(paramString3);
    localStringBuilder.append(", having=");
    localStringBuilder.append(paramString4);
    localStringBuilder.append(", orderBy=");
    localStringBuilder.append(paramString5);
    localStringBuilder.append(", limit=");
    localStringBuilder.append(paramString6);
    com.xiaomi.accountsdk.utils.b.g("SecureDatabase", localStringBuilder.toString());
    return b(localCursor);
  }
  
  public Cursor k(String paramString, Object[] paramArrayOfObject)
  {
    Cursor localCursor = this.b.rawQuery(paramString, g(paramArrayOfObject));
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("query: sql=");
    localStringBuilder.append(paramString);
    localStringBuilder.append(", selectionArgs=");
    localStringBuilder.append(m(paramArrayOfObject));
    com.xiaomi.accountsdk.utils.b.g("SecureDatabase", localStringBuilder.toString());
    return b(localCursor);
  }
  
  public void l()
  {
    this.b.setTransactionSuccessful();
  }
  
  public int o(String paramString1, ContentValues paramContentValues, String paramString2, Object[] paramArrayOfObject)
  {
    int i = this.b.update(paramString1, e(paramContentValues), paramString2, g(paramArrayOfObject));
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("update: ");
    localStringBuilder.append(paramString1);
    localStringBuilder.append(", values=");
    localStringBuilder.append(paramContentValues);
    localStringBuilder.append(", where");
    localStringBuilder.append(paramString2);
    localStringBuilder.append(", args=");
    localStringBuilder.append(m(paramArrayOfObject));
    localStringBuilder.append(", result=");
    localStringBuilder.append(i);
    com.xiaomi.accountsdk.utils.b.g("SecureDatabase", localStringBuilder.toString());
    return i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s5.b
 * JD-Core Version:    0.7.0.1
 */