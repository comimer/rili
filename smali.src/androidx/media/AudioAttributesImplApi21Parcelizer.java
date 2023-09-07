package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;

public final class AudioAttributesImplApi21Parcelizer
{
  public static AudioAttributesImplApi21 read(VersionedParcel paramVersionedParcel)
  {
    AudioAttributesImplApi21 localAudioAttributesImplApi21 = new AudioAttributesImplApi21();
    localAudioAttributesImplApi21.a = ((AudioAttributes)paramVersionedParcel.r(localAudioAttributesImplApi21.a, 1));
    localAudioAttributesImplApi21.b = paramVersionedParcel.p(localAudioAttributesImplApi21.b, 2);
    return localAudioAttributesImplApi21;
  }
  
  public static void write(AudioAttributesImplApi21 paramAudioAttributesImplApi21, VersionedParcel paramVersionedParcel)
  {
    paramVersionedParcel.x(false, false);
    paramVersionedParcel.H(paramAudioAttributesImplApi21.a, 1);
    paramVersionedParcel.F(paramAudioAttributesImplApi21.b, 2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.media.AudioAttributesImplApi21Parcelizer
 * JD-Core Version:    0.7.0.1
 */