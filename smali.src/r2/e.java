package r2;

import android.util.Base64;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d.a;
import e3.b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class e<Model, Data>
  implements n<Model, Data>
{
  private final a<Data> a;
  
  public e(a<Data> parama)
  {
    this.a = parama;
  }
  
  public n.a<Data> a(Model paramModel, int paramInt1, int paramInt2, n2.d paramd)
  {
    return new n.a(new b(paramModel), new b(paramModel.toString(), this.a));
  }
  
  public boolean b(Model paramModel)
  {
    return paramModel.toString().startsWith("data:image");
  }
  
  public static abstract interface a<Data>
  {
    public abstract Class<Data> a();
    
    public abstract void b(Data paramData)
      throws IOException;
    
    public abstract Data c(String paramString)
      throws IllegalArgumentException;
  }
  
  private static final class b<Data>
    implements com.bumptech.glide.load.data.d<Data>
  {
    private final String a;
    private final e.a<Data> b;
    private Data c;
    
    b(String paramString, e.a<Data> parama)
    {
      this.a = paramString;
      this.b = parama;
    }
    
    public Class<Data> a()
    {
      return this.b.a();
    }
    
    public void b()
    {
      try
      {
        this.b.b(this.c);
        label13:
        return;
      }
      catch (IOException localIOException)
      {
        break label13;
      }
    }
    
    public void cancel() {}
    
    public DataSource d()
    {
      return DataSource.LOCAL;
    }
    
    public void e(Priority paramPriority, d.a<? super Data> parama)
    {
      try
      {
        paramPriority = this.b.c(this.a);
        this.c = paramPriority;
        parama.f(paramPriority);
      }
      catch (IllegalArgumentException paramPriority)
      {
        parama.c(paramPriority);
      }
    }
  }
  
  public static final class c<Model>
    implements o<Model, InputStream>
  {
    private final e.a<InputStream> a = new a();
    
    public n<Model, InputStream> b(r paramr)
    {
      return new e(this.a);
    }
    
    class a
      implements e.a<InputStream>
    {
      a() {}
      
      public Class<InputStream> a()
      {
        return InputStream.class;
      }
      
      public void d(InputStream paramInputStream)
        throws IOException
      {
        paramInputStream.close();
      }
      
      public InputStream e(String paramString)
      {
        if (paramString.startsWith("data:image"))
        {
          int i = paramString.indexOf(',');
          if (i != -1)
          {
            if (paramString.substring(0, i).endsWith(";base64")) {
              return new ByteArrayInputStream(Base64.decode(paramString.substring(i + 1), 0));
            }
            throw new IllegalArgumentException("Not a base64 image data URL.");
          }
          throw new IllegalArgumentException("Missing comma in data URL.");
        }
        throw new IllegalArgumentException("Not a valid image data URL.");
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.e
 * JD-Core Version:    0.7.0.1
 */