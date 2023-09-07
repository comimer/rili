package t2;

import android.annotation.SuppressLint;
import android.graphics.ColorSpace;
import android.graphics.ColorSpace.Named;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder.DecodeException;
import android.graphics.ImageDecoder.ImageInfo;
import android.graphics.ImageDecoder.OnHeaderDecodedListener;
import android.graphics.ImageDecoder.OnPartialImageListener;
import android.graphics.ImageDecoder.Source;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.Size;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.engine.s;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.l;
import com.bumptech.glide.load.resource.bitmap.q;
import java.io.IOException;
import n2.c;
import n2.d;
import n2.e;

public abstract class a<T>
  implements e<ImageDecoder.Source, T>
{
  final q a = q.b();
  
  protected abstract s<T> c(ImageDecoder.Source paramSource, int paramInt1, int paramInt2, ImageDecoder.OnHeaderDecodedListener paramOnHeaderDecodedListener)
    throws IOException;
  
  public final s<T> d(ImageDecoder.Source paramSource, final int paramInt1, final int paramInt2, d paramd)
    throws IOException
  {
    final DecodeFormat localDecodeFormat = (DecodeFormat)paramd.c(l.f);
    final DownsampleStrategy localDownsampleStrategy = (DownsampleStrategy)paramd.c(DownsampleStrategy.h);
    c localc = l.j;
    final boolean bool;
    if ((paramd.c(localc) != null) && (((Boolean)paramd.c(localc)).booleanValue())) {
      bool = true;
    } else {
      bool = false;
    }
    return c(paramSource, paramInt1, paramInt2, new a(paramInt1, paramInt2, bool, localDecodeFormat, localDownsampleStrategy, (PreferredColorSpace)paramd.c(l.g)));
  }
  
  public final boolean e(ImageDecoder.Source paramSource, d paramd)
  {
    return true;
  }
  
  class a
    implements ImageDecoder.OnHeaderDecodedListener
  {
    a(int paramInt1, int paramInt2, boolean paramBoolean, DecodeFormat paramDecodeFormat, DownsampleStrategy paramDownsampleStrategy, PreferredColorSpace paramPreferredColorSpace) {}
    
    @SuppressLint({"Override"})
    public void onHeaderDecoded(ImageDecoder paramImageDecoder, ImageDecoder.ImageInfo paramImageInfo, ImageDecoder.Source paramSource)
    {
      paramSource = a.this.a;
      int i = paramInt1;
      int j = paramInt2;
      boolean bool = bool;
      int k = 0;
      if (paramSource.e(i, j, bool, false)) {
        paramImageDecoder.setAllocator(3);
      } else {
        paramImageDecoder.setAllocator(1);
      }
      if (localDecodeFormat == DecodeFormat.PREFER_RGB_565) {
        paramImageDecoder.setMemorySizePolicy(0);
      }
      paramImageDecoder.setOnPartialImageListener(new a());
      Size localSize = paramImageInfo.getSize();
      i = paramInt1;
      j = i;
      if (i == -2147483648) {
        j = localSize.getWidth();
      }
      int m = paramInt2;
      i = m;
      if (m == -2147483648) {
        i = localSize.getHeight();
      }
      float f1 = localDownsampleStrategy.b(localSize.getWidth(), localSize.getHeight(), j, i);
      i = Math.round(localSize.getWidth() * f1);
      j = Math.round(localSize.getHeight() * f1);
      if (Log.isLoggable("ImageDecoder", 2))
      {
        paramSource = new StringBuilder();
        paramSource.append("Resizing from [");
        paramSource.append(localSize.getWidth());
        paramSource.append("x");
        paramSource.append(localSize.getHeight());
        paramSource.append("] to [");
        paramSource.append(i);
        paramSource.append("x");
        paramSource.append(j);
        paramSource.append("] scaleFactor: ");
        paramSource.append(f1);
        Log.v("ImageDecoder", paramSource.toString());
      }
      paramImageDecoder.setTargetSize(i, j);
      if (Build.VERSION.SDK_INT >= 28)
      {
        j = k;
        if (this.f == PreferredColorSpace.DISPLAY_P3)
        {
          j = k;
          if (paramImageInfo.getColorSpace() != null)
          {
            j = k;
            if (paramImageInfo.getColorSpace().isWideGamut()) {
              j = 1;
            }
          }
        }
        if (j != 0) {
          paramImageInfo = ColorSpace.Named.DISPLAY_P3;
        } else {
          paramImageInfo = ColorSpace.Named.SRGB;
        }
        paramImageDecoder.setTargetColorSpace(ColorSpace.get(paramImageInfo));
      }
      else
      {
        paramImageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
      }
    }
    
    class a
      implements ImageDecoder.OnPartialImageListener
    {
      a() {}
      
      public boolean onPartialImage(ImageDecoder.DecodeException paramDecodeException)
      {
        return false;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t2.a
 * JD-Core Version:    0.7.0.1
 */