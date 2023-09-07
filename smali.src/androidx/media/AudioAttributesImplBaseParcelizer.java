package androidx.media;

import androidx.versionedparcelable.VersionedParcel;

public final class AudioAttributesImplBaseParcelizer
{
  public static AudioAttributesImplBase read(VersionedParcel paramVersionedParcel)
  {
    AudioAttributesImplBase localAudioAttributesImplBase = new AudioAttributesImplBase();
    localAudioAttributesImplBase.a = paramVersionedParcel.p(localAudioAttributesImplBase.a, 1);
    localAudioAttributesImplBase.b = paramVersionedParcel.p(localAudioAttributesImplBase.b, 2);
    localAudioAttributesImplBase.c = paramVersionedParcel.p(localAudioAttributesImplBase.c, 3);
    localAudioAttributesImplBase.d = paramVersionedParcel.p(localAudioAttributesImplBase.d, 4);
    return localAudioAttributesImplBase;
  }
  
  public static void write(AudioAttributesImplBase paramAudioAttributesImplBase, VersionedParcel paramVersionedParcel)
  {
    paramVersionedParcel.x(false, false);
    paramVersionedParcel.F(paramAudioAttributesImplBase.a, 1);
    paramVersionedParcel.F(paramAudioAttributesImplBase.b, 2);
    paramVersionedParcel.F(paramAudioAttributesImplBase.c, 3);
    paramVersionedParcel.F(paramAudioAttributesImplBase.d, 4);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.media.AudioAttributesImplBaseParcelizer
 * JD-Core Version:    0.7.0.1
 */