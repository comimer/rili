package r2;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d.a;
import e3.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class f<Data>
  implements n<File, Data>
{
  private final d<Data> a;
  
  public f(d<Data> paramd)
  {
    this.a = paramd;
  }
  
  public n.a<Data> c(File paramFile, int paramInt1, int paramInt2, n2.d paramd)
  {
    return new n.a(new b(paramFile), new c(paramFile, this.a));
  }
  
  public boolean d(File paramFile)
  {
    return true;
  }
  
  public static class a<Data>
    implements o<File, Data>
  {
    private final f.d<Data> a;
    
    public a(f.d<Data> paramd)
    {
      this.a = paramd;
    }
    
    public final n<File, Data> b(r paramr)
    {
      return new f(this.a);
    }
  }
  
  public static class b
    extends f.a<ParcelFileDescriptor>
  {
    public b()
    {
      super();
    }
    
    class a
      implements f.d<ParcelFileDescriptor>
    {
      public Class<ParcelFileDescriptor> a()
      {
        return ParcelFileDescriptor.class;
      }
      
      public void d(ParcelFileDescriptor paramParcelFileDescriptor)
        throws IOException
      {
        paramParcelFileDescriptor.close();
      }
      
      public ParcelFileDescriptor e(File paramFile)
        throws FileNotFoundException
      {
        return ParcelFileDescriptor.open(paramFile, 268435456);
      }
    }
  }
  
  private static final class c<Data>
    implements com.bumptech.glide.load.data.d<Data>
  {
    private final File a;
    private final f.d<Data> b;
    private Data c;
    
    c(File paramFile, f.d<Data> paramd)
    {
      this.a = paramFile;
      this.b = paramd;
    }
    
    public Class<Data> a()
    {
      return this.b.a();
    }
    
    public void b()
    {
      Object localObject = this.c;
      if (localObject != null) {}
      try
      {
        this.b.b(localObject);
        label19:
        return;
      }
      catch (IOException localIOException)
      {
        break label19;
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
      catch (FileNotFoundException paramPriority)
      {
        if (Log.isLoggable("FileLoader", 3)) {
          Log.d("FileLoader", "Failed to open file", paramPriority);
        }
        parama.c(paramPriority);
      }
    }
  }
  
  public static abstract interface d<Data>
  {
    public abstract Class<Data> a();
    
    public abstract void b(Data paramData)
      throws IOException;
    
    public abstract Data c(File paramFile)
      throws FileNotFoundException;
  }
  
  public static class e
    extends f.a<InputStream>
  {
    public e()
    {
      super();
    }
    
    class a
      implements f.d<InputStream>
    {
      public Class<InputStream> a()
      {
        return InputStream.class;
      }
      
      public void d(InputStream paramInputStream)
        throws IOException
      {
        paramInputStream.close();
      }
      
      public InputStream e(File paramFile)
        throws FileNotFoundException
      {
        return new FileInputStream(paramFile);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.f
 * JD-Core Version:    0.7.0.1
 */