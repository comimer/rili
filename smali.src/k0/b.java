package k0;

import android.database.Cursor;
import android.database.MatrixCursor;

public class b
{
  public static Cursor a(Cursor paramCursor)
  {
    try
    {
      MatrixCursor localMatrixCursor = new android/database/MatrixCursor;
      localMatrixCursor.<init>(paramCursor.getColumnNames(), paramCursor.getCount());
      while (paramCursor.moveToNext())
      {
        Object localObject1 = new Object[paramCursor.getColumnCount()];
        for (int i = 0; i < paramCursor.getColumnCount(); i++)
        {
          int j = paramCursor.getType(i);
          if (j != 0)
          {
            if (j != 1)
            {
              if (j != 2)
              {
                if (j != 3)
                {
                  if (j == 4)
                  {
                    localObject1[i] = paramCursor.getBlob(i);
                  }
                  else
                  {
                    localObject1 = new java/lang/IllegalStateException;
                    ((IllegalStateException)localObject1).<init>();
                    throw ((Throwable)localObject1);
                  }
                }
                else {
                  localObject1[i] = paramCursor.getString(i);
                }
              }
              else {
                localObject1[i] = Double.valueOf(paramCursor.getDouble(i));
              }
            }
            else {
              localObject1[i] = Long.valueOf(paramCursor.getLong(i));
            }
          }
          else {
            localObject1[i] = null;
          }
        }
        localMatrixCursor.addRow((Object[])localObject1);
      }
      return localMatrixCursor;
    }
    finally
    {
      paramCursor.close();
    }
  }
  
  public static int b(Cursor paramCursor, String paramString)
  {
    int i = paramCursor.getColumnIndex(paramString);
    if (i >= 0) {
      return i;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("`");
    localStringBuilder.append(paramString);
    localStringBuilder.append("`");
    return paramCursor.getColumnIndex(localStringBuilder.toString());
  }
  
  public static int c(Cursor paramCursor, String paramString)
  {
    int i = paramCursor.getColumnIndex(paramString);
    if (i >= 0) {
      return i;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("`");
    localStringBuilder.append(paramString);
    localStringBuilder.append("`");
    return paramCursor.getColumnIndexOrThrow(localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k0.b
 * JD-Core Version:    0.7.0.1
 */