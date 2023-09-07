package androidx.media;

import androidx.versionedparcelable.VersionedParcel;

public final class AudioAttributesCompatParcelizer
{
  public static AudioAttributesCompat read(VersionedParcel paramVersionedParcel)
  {
    AudioAttributesCompat localAudioAttributesCompat = new AudioAttributesCompat();
    localAudioAttributesCompat.a = ((AudioAttributesImpl)paramVersionedParcel.v(localAudioAttributesCompat.a, 1));
    return localAudioAttributesCompat;
  }
  
  public static void write(AudioAttributesCompat paramAudioAttributesCompat, VersionedParcel paramVersionedParcel)
  {
    paramVersionedParcel.x(false, false);
    paramVersionedParcel.M(paramAudioAttributesCompat.a, 1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.media.AudioAttributesCompatParcelizer
 * JD-Core Version:    0.7.0.1
 */