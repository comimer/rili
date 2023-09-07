package c0;

import android.content.res.AssetManager.AssetInputStream;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;

public class a
{
  public static final int[] A;
  public static final int[] B;
  static final byte[] C;
  private static final byte[] D;
  private static final byte[] E;
  private static final byte[] F;
  private static final byte[] G;
  private static final byte[] H;
  private static final byte[] I;
  private static final byte[] J;
  private static final byte[] K;
  private static final byte[] L;
  private static final byte[] M;
  private static final byte[] N;
  private static final byte[] O;
  private static final byte[] P;
  private static final byte[] Q;
  private static final byte[] R;
  private static final byte[] S;
  private static final byte[] T;
  private static final byte[] U;
  private static final byte[] V;
  private static SimpleDateFormat W;
  static final String[] X;
  static final int[] Y;
  static final byte[] Z;
  private static final d[] a0;
  private static final d[] b0;
  private static final d[] c0;
  private static final d[] d0;
  private static final d[] e0;
  private static final d f0;
  private static final d[] g0;
  private static final d[] h0;
  private static final d[] i0;
  private static final d[] j0;
  static final d[][] k0;
  private static final d[] l0;
  private static final d m0;
  private static final d n0;
  private static final HashMap<Integer, d>[] o0;
  private static final HashMap<String, d>[] p0;
  private static final HashSet<String> q0;
  private static final HashMap<Integer, Integer> r0;
  static final Charset s0;
  static final byte[] t0;
  private static final byte[] u0;
  private static final Pattern v0 = Pattern.compile(".*[1-9].*");
  private static final boolean w;
  private static final Pattern w0 = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
  private static final List<Integer> x;
  private static final List<Integer> y;
  public static final int[] z;
  private String a;
  private FileDescriptor b;
  private AssetManager.AssetInputStream c;
  private int d;
  private boolean e;
  private final HashMap<String, c>[] f;
  private Set<Integer> g;
  private ByteOrder h;
  private boolean i;
  private boolean j;
  private boolean k;
  private int l;
  private int m;
  private byte[] n;
  private int o;
  private int p;
  private int q;
  private int r;
  private int s;
  private int t;
  private boolean u;
  private boolean v;
  
  static
  {
    Integer localInteger1 = Integer.valueOf(3);
    w = Log.isLoggable("ExifInterface", 3);
    Integer localInteger2 = Integer.valueOf(1);
    Integer localInteger3 = Integer.valueOf(2);
    Integer localInteger4 = Integer.valueOf(8);
    x = Arrays.asList(new Integer[] { localInteger2, Integer.valueOf(6), localInteger1, localInteger4 });
    Integer localInteger5 = Integer.valueOf(7);
    Integer localInteger6 = Integer.valueOf(5);
    y = Arrays.asList(new Integer[] { localInteger3, localInteger5, Integer.valueOf(4), localInteger6 });
    z = new int[] { 8, 8, 8 };
    A = new int[] { 4 };
    B = new int[] { 8 };
    C = new byte[] { -1, -40, -1 };
    D = new byte[] { 102, 116, 121, 112 };
    E = new byte[] { 109, 105, 102, 49 };
    F = new byte[] { 104, 101, 105, 99 };
    G = new byte[] { 79, 76, 89, 77, 80, 0 };
    H = new byte[] { 79, 76, 89, 77, 80, 85, 83, 0, 73, 73 };
    I = new byte[] { -119, 80, 78, 71, 13, 10, 26, 10 };
    J = new byte[] { 101, 88, 73, 102 };
    K = new byte[] { 73, 72, 68, 82 };
    L = new byte[] { 73, 69, 78, 68 };
    M = new byte[] { 82, 73, 70, 70 };
    N = new byte[] { 87, 69, 66, 80 };
    O = new byte[] { 69, 88, 73, 70 };
    P = new byte[] { -99, 1, 42 };
    Q = "VP8X".getBytes(Charset.defaultCharset());
    R = "VP8L".getBytes(Charset.defaultCharset());
    S = "VP8 ".getBytes(Charset.defaultCharset());
    T = "ANIM".getBytes(Charset.defaultCharset());
    U = "ANMF".getBytes(Charset.defaultCharset());
    V = "XMP ".getBytes(Charset.defaultCharset());
    X = new String[] { "", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD" };
    Y = new int[] { 0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1 };
    Z = new byte[] { 65, 83, 67, 73, 73, 0, 0, 0 };
    d[] arrayOfd1 = new d[42];
    arrayOfd1[0] = new d("NewSubfileType", 254, 4);
    arrayOfd1[1] = new d("SubfileType", 255, 4);
    arrayOfd1[2] = new d("ImageWidth", 256, 3, 4);
    arrayOfd1[3] = new d("ImageLength", 257, 3, 4);
    arrayOfd1[4] = new d("BitsPerSample", 258, 3);
    arrayOfd1[5] = new d("Compression", 259, 3);
    arrayOfd1[6] = new d("PhotometricInterpretation", 262, 3);
    arrayOfd1[7] = new d("ImageDescription", 270, 2);
    arrayOfd1[8] = new d("Make", 271, 2);
    arrayOfd1[9] = new d("Model", 272, 2);
    arrayOfd1[10] = new d("StripOffsets", 273, 3, 4);
    arrayOfd1[11] = new d("Orientation", 274, 3);
    arrayOfd1[12] = new d("SamplesPerPixel", 277, 3);
    arrayOfd1[13] = new d("RowsPerStrip", 278, 3, 4);
    arrayOfd1[14] = new d("StripByteCounts", 279, 3, 4);
    arrayOfd1[15] = new d("XResolution", 282, 5);
    arrayOfd1[16] = new d("YResolution", 283, 5);
    arrayOfd1[17] = new d("PlanarConfiguration", 284, 3);
    arrayOfd1[18] = new d("ResolutionUnit", 296, 3);
    arrayOfd1[19] = new d("TransferFunction", 301, 3);
    arrayOfd1[20] = new d("Software", 305, 2);
    arrayOfd1[21] = new d("DateTime", 306, 2);
    arrayOfd1[22] = new d("Artist", 315, 2);
    arrayOfd1[23] = new d("WhitePoint", 318, 5);
    arrayOfd1[24] = new d("PrimaryChromaticities", 319, 5);
    arrayOfd1[25] = new d("SubIFDPointer", 330, 4);
    arrayOfd1[26] = new d("JPEGInterchangeFormat", 513, 4);
    arrayOfd1[27] = new d("JPEGInterchangeFormatLength", 514, 4);
    arrayOfd1[28] = new d("YCbCrCoefficients", 529, 5);
    arrayOfd1[29] = new d("YCbCrSubSampling", 530, 3);
    arrayOfd1[30] = new d("YCbCrPositioning", 531, 3);
    arrayOfd1[31] = new d("ReferenceBlackWhite", 532, 5);
    arrayOfd1[32] = new d("Copyright", 33432, 2);
    arrayOfd1[33] = new d("ExifIFDPointer", 34665, 4);
    arrayOfd1[34] = new d("GPSInfoIFDPointer", 34853, 4);
    arrayOfd1[35] = new d("SensorTopBorder", 4, 4);
    arrayOfd1[36] = new d("SensorLeftBorder", 5, 4);
    arrayOfd1[37] = new d("SensorBottomBorder", 6, 4);
    arrayOfd1[38] = new d("SensorRightBorder", 7, 4);
    arrayOfd1[39] = new d("ISO", 23, 3);
    arrayOfd1[40] = new d("JpgFromRaw", 46, 7);
    arrayOfd1[41] = new d("Xmp", 700, 1);
    a0 = arrayOfd1;
    d[] arrayOfd2 = new d[74];
    arrayOfd2[0] = new d("ExposureTime", 33434, 5);
    arrayOfd2[1] = new d("FNumber", 33437, 5);
    arrayOfd2[2] = new d("ExposureProgram", 34850, 3);
    arrayOfd2[3] = new d("SpectralSensitivity", 34852, 2);
    arrayOfd2[4] = new d("PhotographicSensitivity", 34855, 3);
    arrayOfd2[5] = new d("OECF", 34856, 7);
    arrayOfd2[6] = new d("SensitivityType", 34864, 3);
    arrayOfd2[7] = new d("StandardOutputSensitivity", 34865, 4);
    arrayOfd2[8] = new d("RecommendedExposureIndex", 34866, 4);
    arrayOfd2[9] = new d("ISOSpeed", 34867, 4);
    arrayOfd2[10] = new d("ISOSpeedLatitudeyyy", 34868, 4);
    arrayOfd2[11] = new d("ISOSpeedLatitudezzz", 34869, 4);
    arrayOfd2[12] = new d("ExifVersion", 36864, 2);
    arrayOfd2[13] = new d("DateTimeOriginal", 36867, 2);
    arrayOfd2[14] = new d("DateTimeDigitized", 36868, 2);
    arrayOfd2[15] = new d("OffsetTime", 36880, 2);
    arrayOfd2[16] = new d("OffsetTimeOriginal", 36881, 2);
    arrayOfd2[17] = new d("OffsetTimeDigitized", 36882, 2);
    arrayOfd2[18] = new d("ComponentsConfiguration", 37121, 7);
    arrayOfd2[19] = new d("CompressedBitsPerPixel", 37122, 5);
    arrayOfd2[20] = new d("ShutterSpeedValue", 37377, 10);
    arrayOfd2[21] = new d("ApertureValue", 37378, 5);
    arrayOfd2[22] = new d("BrightnessValue", 37379, 10);
    arrayOfd2[23] = new d("ExposureBiasValue", 37380, 10);
    arrayOfd2[24] = new d("MaxApertureValue", 37381, 5);
    arrayOfd2[25] = new d("SubjectDistance", 37382, 5);
    arrayOfd2[26] = new d("MeteringMode", 37383, 3);
    arrayOfd2[27] = new d("LightSource", 37384, 3);
    arrayOfd2[28] = new d("Flash", 37385, 3);
    arrayOfd2[29] = new d("FocalLength", 37386, 5);
    arrayOfd2[30] = new d("SubjectArea", 37396, 3);
    arrayOfd2[31] = new d("MakerNote", 37500, 7);
    arrayOfd2[32] = new d("UserComment", 37510, 7);
    arrayOfd2[33] = new d("SubSecTime", 37520, 2);
    arrayOfd2[34] = new d("SubSecTimeOriginal", 37521, 2);
    arrayOfd2[35] = new d("SubSecTimeDigitized", 37522, 2);
    arrayOfd2[36] = new d("FlashpixVersion", 40960, 7);
    arrayOfd2[37] = new d("ColorSpace", 40961, 3);
    arrayOfd2[38] = new d("PixelXDimension", 40962, 3, 4);
    arrayOfd2[39] = new d("PixelYDimension", 40963, 3, 4);
    arrayOfd2[40] = new d("RelatedSoundFile", 40964, 2);
    arrayOfd2[41] = new d("InteroperabilityIFDPointer", 40965, 4);
    arrayOfd2[42] = new d("FlashEnergy", 41483, 5);
    arrayOfd2[43] = new d("SpatialFrequencyResponse", 41484, 7);
    arrayOfd2[44] = new d("FocalPlaneXResolution", 41486, 5);
    arrayOfd2[45] = new d("FocalPlaneYResolution", 41487, 5);
    arrayOfd2[46] = new d("FocalPlaneResolutionUnit", 41488, 3);
    arrayOfd2[47] = new d("SubjectLocation", 41492, 3);
    arrayOfd2[48] = new d("ExposureIndex", 41493, 5);
    arrayOfd2[49] = new d("SensingMethod", 41495, 3);
    arrayOfd2[50] = new d("FileSource", 41728, 7);
    arrayOfd2[51] = new d("SceneType", 41729, 7);
    arrayOfd2[52] = new d("CFAPattern", 41730, 7);
    arrayOfd2[53] = new d("CustomRendered", 41985, 3);
    arrayOfd2[54] = new d("ExposureMode", 41986, 3);
    arrayOfd2[55] = new d("WhiteBalance", 41987, 3);
    arrayOfd2[56] = new d("DigitalZoomRatio", 41988, 5);
    arrayOfd2[57] = new d("FocalLengthIn35mmFilm", 41989, 3);
    arrayOfd2[58] = new d("SceneCaptureType", 41990, 3);
    arrayOfd2[59] = new d("GainControl", 41991, 3);
    arrayOfd2[60] = new d("Contrast", 41992, 3);
    arrayOfd2[61] = new d("Saturation", 41993, 3);
    arrayOfd2[62] = new d("Sharpness", 41994, 3);
    arrayOfd2[63] = new d("DeviceSettingDescription", 41995, 7);
    arrayOfd2[64] = new d("SubjectDistanceRange", 41996, 3);
    arrayOfd2[65] = new d("ImageUniqueID", 42016, 2);
    arrayOfd2[66] = new d("CameraOwnerName", 42032, 2);
    arrayOfd2[67] = new d("BodySerialNumber", 42033, 2);
    arrayOfd2[68] = new d("LensSpecification", 42034, 5);
    arrayOfd2[69] = new d("LensMake", 42035, 2);
    arrayOfd2[70] = new d("LensModel", 42036, 2);
    arrayOfd2[71] = new d("Gamma", 42240, 5);
    arrayOfd2[72] = new d("DNGVersion", 50706, 1);
    arrayOfd2[73] = new d("DefaultCropSize", 50720, 3, 4);
    b0 = arrayOfd2;
    d[] arrayOfd3 = new d[32];
    arrayOfd3[0] = new d("GPSVersionID", 0, 1);
    arrayOfd3[1] = new d("GPSLatitudeRef", 1, 2);
    arrayOfd3[2] = new d("GPSLatitude", 2, 5);
    arrayOfd3[3] = new d("GPSLongitudeRef", 3, 2);
    arrayOfd3[4] = new d("GPSLongitude", 4, 5);
    arrayOfd3[5] = new d("GPSAltitudeRef", 5, 1);
    arrayOfd3[6] = new d("GPSAltitude", 6, 5);
    arrayOfd3[7] = new d("GPSTimeStamp", 7, 5);
    arrayOfd3[8] = new d("GPSSatellites", 8, 2);
    arrayOfd3[9] = new d("GPSStatus", 9, 2);
    arrayOfd3[10] = new d("GPSMeasureMode", 10, 2);
    arrayOfd3[11] = new d("GPSDOP", 11, 5);
    arrayOfd3[12] = new d("GPSSpeedRef", 12, 2);
    arrayOfd3[13] = new d("GPSSpeed", 13, 5);
    arrayOfd3[14] = new d("GPSTrackRef", 14, 2);
    arrayOfd3[15] = new d("GPSTrack", 15, 5);
    arrayOfd3[16] = new d("GPSImgDirectionRef", 16, 2);
    arrayOfd3[17] = new d("GPSImgDirection", 17, 5);
    arrayOfd3[18] = new d("GPSMapDatum", 18, 2);
    arrayOfd3[19] = new d("GPSDestLatitudeRef", 19, 2);
    arrayOfd3[20] = new d("GPSDestLatitude", 20, 5);
    arrayOfd3[21] = new d("GPSDestLongitudeRef", 21, 2);
    arrayOfd3[22] = new d("GPSDestLongitude", 22, 5);
    arrayOfd3[23] = new d("GPSDestBearingRef", 23, 2);
    arrayOfd3[24] = new d("GPSDestBearing", 24, 5);
    arrayOfd3[25] = new d("GPSDestDistanceRef", 25, 2);
    arrayOfd3[26] = new d("GPSDestDistance", 26, 5);
    arrayOfd3[27] = new d("GPSProcessingMethod", 27, 7);
    arrayOfd3[28] = new d("GPSAreaInformation", 28, 7);
    arrayOfd3[29] = new d("GPSDateStamp", 29, 2);
    arrayOfd3[30] = new d("GPSDifferential", 30, 3);
    arrayOfd3[31] = new d("GPSHPositioningError", 31, 5);
    c0 = arrayOfd3;
    Object localObject1 = new d[1];
    localObject1[0] = new d("InteroperabilityIndex", 1, 2);
    d0 = (d[])localObject1;
    Object localObject2 = new d[37];
    localObject2[0] = new d("NewSubfileType", 254, 4);
    localObject2[1] = new d("SubfileType", 255, 4);
    localObject2[2] = new d("ThumbnailImageWidth", 256, 3, 4);
    localObject2[3] = new d("ThumbnailImageLength", 257, 3, 4);
    localObject2[4] = new d("BitsPerSample", 258, 3);
    localObject2[5] = new d("Compression", 259, 3);
    localObject2[6] = new d("PhotometricInterpretation", 262, 3);
    localObject2[7] = new d("ImageDescription", 270, 2);
    localObject2[8] = new d("Make", 271, 2);
    localObject2[9] = new d("Model", 272, 2);
    localObject2[10] = new d("StripOffsets", 273, 3, 4);
    localObject2[11] = new d("ThumbnailOrientation", 274, 3);
    localObject2[12] = new d("SamplesPerPixel", 277, 3);
    localObject2[13] = new d("RowsPerStrip", 278, 3, 4);
    localObject2[14] = new d("StripByteCounts", 279, 3, 4);
    localObject2[15] = new d("XResolution", 282, 5);
    localObject2[16] = new d("YResolution", 283, 5);
    localObject2[17] = new d("PlanarConfiguration", 284, 3);
    localObject2[18] = new d("ResolutionUnit", 296, 3);
    localObject2[19] = new d("TransferFunction", 301, 3);
    localObject2[20] = new d("Software", 305, 2);
    localObject2[21] = new d("DateTime", 306, 2);
    localObject2[22] = new d("Artist", 315, 2);
    localObject2[23] = new d("WhitePoint", 318, 5);
    localObject2[24] = new d("PrimaryChromaticities", 319, 5);
    localObject2[25] = new d("SubIFDPointer", 330, 4);
    localObject2[26] = new d("JPEGInterchangeFormat", 513, 4);
    localObject2[27] = new d("JPEGInterchangeFormatLength", 514, 4);
    localObject2[28] = new d("YCbCrCoefficients", 529, 5);
    localObject2[29] = new d("YCbCrSubSampling", 530, 3);
    localObject2[30] = new d("YCbCrPositioning", 531, 3);
    localObject2[31] = new d("ReferenceBlackWhite", 532, 5);
    localObject2[32] = new d("Copyright", 33432, 2);
    localObject2[33] = new d("ExifIFDPointer", 34665, 4);
    localObject2[34] = new d("GPSInfoIFDPointer", 34853, 4);
    localObject2[35] = new d("DNGVersion", 50706, 1);
    localObject2[36] = new d("DefaultCropSize", 50720, 3, 4);
    e0 = (d[])localObject2;
    f0 = new d("StripOffsets", 273, 3);
    d[] arrayOfd4 = new d[3];
    arrayOfd4[0] = new d("ThumbnailImage", 256, 7);
    arrayOfd4[1] = new d("CameraSettingsIFDPointer", 8224, 4);
    arrayOfd4[2] = new d("ImageProcessingIFDPointer", 8256, 4);
    g0 = arrayOfd4;
    d[] arrayOfd5 = new d[2];
    arrayOfd5[0] = new d("PreviewImageStart", 257, 4);
    arrayOfd5[1] = new d("PreviewImageLength", 258, 4);
    h0 = arrayOfd5;
    d[] arrayOfd6 = new d[1];
    arrayOfd6[0] = new d("AspectFrame", 4371, 3);
    i0 = arrayOfd6;
    d[] arrayOfd7 = new d[1];
    arrayOfd7[0] = new d("ColorSpace", 55, 3);
    j0 = arrayOfd7;
    d[][] arrayOfd; = new d[10][];
    arrayOfd;[0] = arrayOfd1;
    arrayOfd;[1] = arrayOfd2;
    arrayOfd;[2] = arrayOfd3;
    arrayOfd;[3] = localObject1;
    arrayOfd;[4] = localObject2;
    arrayOfd;[5] = arrayOfd1;
    arrayOfd;[6] = arrayOfd4;
    arrayOfd;[7] = arrayOfd5;
    arrayOfd;[8] = arrayOfd6;
    arrayOfd;[9] = arrayOfd7;
    k0 = arrayOfd;;
    l0 = new d[] { new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1) };
    m0 = new d("JPEGInterchangeFormat", 513, 4);
    n0 = new d("JPEGInterchangeFormatLength", 514, 4);
    o0 = new HashMap[arrayOfd;.length];
    p0 = new HashMap[arrayOfd;.length];
    q0 = new HashSet(Arrays.asList(new String[] { "FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp" }));
    r0 = new HashMap();
    localObject1 = Charset.forName("US-ASCII");
    s0 = (Charset)localObject1;
    t0 = "".getBytes((Charset)localObject1);
    u0 = "".getBytes((Charset)localObject1);
    localObject1 = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
    W = (SimpleDateFormat)localObject1;
    ((DateFormat)localObject1).setTimeZone(TimeZone.getTimeZone("UTC"));
    for (int i1 = 0;; i1++)
    {
      localObject1 = k0;
      if (i1 >= localObject1.length) {
        break;
      }
      o0[i1] = new HashMap();
      p0[i1] = new HashMap();
      for (localObject1 : localObject1[i1])
      {
        o0[i1].put(Integer.valueOf(((d)localObject1).a), localObject1);
        p0[i1].put(((d)localObject1).b, localObject1);
      }
    }
    localObject2 = r0;
    localObject1 = l0;
    ((HashMap)localObject2).put(Integer.valueOf(localObject1[0].a), localInteger6);
    ((HashMap)localObject2).put(Integer.valueOf(localObject1[1].a), localInteger2);
    ((HashMap)localObject2).put(Integer.valueOf(localObject1[2].a), localInteger3);
    ((HashMap)localObject2).put(Integer.valueOf(localObject1[3].a), localInteger1);
    ((HashMap)localObject2).put(Integer.valueOf(localObject1[4].a), localInteger5);
    ((HashMap)localObject2).put(Integer.valueOf(localObject1[5].a), localInteger4);
  }
  
  public a(InputStream paramInputStream)
    throws IOException
  {
    this(paramInputStream, false);
  }
  
  private a(InputStream paramInputStream, boolean paramBoolean)
    throws IOException
  {
    Object localObject = k0;
    this.f = new HashMap[localObject.length];
    this.g = new HashSet(localObject.length);
    this.h = ByteOrder.BIG_ENDIAN;
    if (paramInputStream != null)
    {
      this.a = null;
      if (paramBoolean)
      {
        paramInputStream = new BufferedInputStream(paramInputStream, 5000);
        if (!s(paramInputStream))
        {
          Log.w("ExifInterface", "Given data does not follow the structure of an Exif-only data.");
          return;
        }
        this.e = true;
        this.c = null;
        this.b = null;
      }
      else if ((paramInputStream instanceof AssetManager.AssetInputStream))
      {
        this.c = ((AssetManager.AssetInputStream)paramInputStream);
        this.b = null;
      }
      else
      {
        if ((paramInputStream instanceof FileInputStream))
        {
          localObject = (FileInputStream)paramInputStream;
          if (z(((FileInputStream)localObject).getFD()))
          {
            this.c = null;
            this.b = ((FileInputStream)localObject).getFD();
            break label168;
          }
        }
        this.c = null;
        this.b = null;
      }
      label168:
      D(paramInputStream);
      return;
    }
    throw new NullPointerException("inputStream cannot be null");
  }
  
  private boolean A(HashMap paramHashMap)
    throws IOException
  {
    Object localObject = (c)paramHashMap.get("BitsPerSample");
    if (localObject != null)
    {
      int[] arrayOfInt = (int[])((c)localObject).k(this.h);
      localObject = z;
      if (Arrays.equals((int[])localObject, arrayOfInt)) {
        return true;
      }
      if (this.d == 3)
      {
        paramHashMap = (c)paramHashMap.get("PhotometricInterpretation");
        if (paramHashMap != null)
        {
          int i1 = paramHashMap.i(this.h);
          if (((i1 == 1) && (Arrays.equals(arrayOfInt, B))) || ((i1 == 6) && (Arrays.equals(arrayOfInt, (int[])localObject)))) {
            return true;
          }
        }
      }
    }
    if (w) {
      Log.d("ExifInterface", "Unsupported data type value");
    }
    return false;
  }
  
  private boolean B(HashMap paramHashMap)
    throws IOException
  {
    c localc = (c)paramHashMap.get("ImageLength");
    paramHashMap = (c)paramHashMap.get("ImageWidth");
    if ((localc != null) && (paramHashMap != null))
    {
      int i1 = localc.i(this.h);
      int i2 = paramHashMap.i(this.h);
      if ((i1 <= 512) && (i2 <= 512)) {
        return true;
      }
    }
    return false;
  }
  
  private boolean C(byte[] paramArrayOfByte)
    throws IOException
  {
    byte[] arrayOfByte;
    for (int i1 = 0;; i1++)
    {
      arrayOfByte = M;
      if (i1 >= arrayOfByte.length) {
        break;
      }
      if (paramArrayOfByte[i1] != arrayOfByte[i1]) {
        return false;
      }
    }
    for (i1 = 0;; i1++)
    {
      arrayOfByte = N;
      if (i1 >= arrayOfByte.length) {
        break;
      }
      if (paramArrayOfByte[(M.length + i1 + 4)] != arrayOfByte[i1]) {
        return false;
      }
    }
    return true;
  }
  
  /* Error */
  private void D(InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +312 -> 313
    //   4: iconst_0
    //   5: istore_2
    //   6: iload_2
    //   7: getstatic 709	c0/a:k0	[[Lc0/a$d;
    //   10: arraylength
    //   11: if_icmpge +22 -> 33
    //   14: aload_0
    //   15: getfield 804	c0/a:f	[Ljava/util/HashMap;
    //   18: iload_2
    //   19: new 717	java/util/HashMap
    //   22: dup
    //   23: invokespecial 730	java/util/HashMap:<init>	()V
    //   26: aastore
    //   27: iinc 2 1
    //   30: goto -24 -> 6
    //   33: aload_1
    //   34: astore_3
    //   35: aload_0
    //   36: getfield 833	c0/a:e	Z
    //   39: ifne +24 -> 63
    //   42: new 820	java/io/BufferedInputStream
    //   45: astore_3
    //   46: aload_3
    //   47: aload_1
    //   48: sipush 5000
    //   51: invokespecial 823	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   54: aload_0
    //   55: aload_0
    //   56: aload_3
    //   57: invokespecial 881	c0/a:i	(Ljava/io/BufferedInputStream;)I
    //   60: putfield 870	c0/a:d	I
    //   63: new 8	c0/a$b
    //   66: astore_1
    //   67: aload_1
    //   68: aload_3
    //   69: invokespecial 883	c0/a$b:<init>	(Ljava/io/InputStream;)V
    //   72: aload_0
    //   73: getfield 833	c0/a:e	Z
    //   76: ifne +149 -> 225
    //   79: aload_0
    //   80: getfield 870	c0/a:d	I
    //   83: tableswitch	default:+73 -> 156, 0:+134->217, 1:+134->217, 2:+134->217, 3:+134->217, 4:+124->207, 5:+134->217, 6:+134->217, 7:+116->199, 8:+134->217, 9:+108->191, 10:+100->183, 11:+134->217, 12:+92->175, 13:+84->167, 14:+76->159
    //   157: nop
    //   158: dstore_3
    //   159: aload_0
    //   160: aload_1
    //   161: invokespecial 886	c0/a:p	(Lc0/a$b;)V
    //   164: goto +66 -> 230
    //   167: aload_0
    //   168: aload_1
    //   169: invokespecial 888	c0/a:k	(Lc0/a$b;)V
    //   172: goto +58 -> 230
    //   175: aload_0
    //   176: aload_1
    //   177: invokespecial 890	c0/a:g	(Lc0/a$b;)V
    //   180: goto +50 -> 230
    //   183: aload_0
    //   184: aload_1
    //   185: invokespecial 892	c0/a:n	(Lc0/a$b;)V
    //   188: goto +42 -> 230
    //   191: aload_0
    //   192: aload_1
    //   193: invokespecial 894	c0/a:l	(Lc0/a$b;)V
    //   196: goto +34 -> 230
    //   199: aload_0
    //   200: aload_1
    //   201: invokespecial 896	c0/a:j	(Lc0/a$b;)V
    //   204: goto +26 -> 230
    //   207: aload_0
    //   208: aload_1
    //   209: iconst_0
    //   210: iconst_0
    //   211: invokespecial 899	c0/a:h	(Lc0/a$b;II)V
    //   214: goto +16 -> 230
    //   217: aload_0
    //   218: aload_1
    //   219: invokespecial 901	c0/a:m	(Lc0/a$b;)V
    //   222: goto +8 -> 230
    //   225: aload_0
    //   226: aload_1
    //   227: invokespecial 903	c0/a:o	(Lc0/a$b;)V
    //   230: aload_0
    //   231: aload_1
    //   232: invokespecial 905	c0/a:K	(Lc0/a$b;)V
    //   235: aload_0
    //   236: iconst_1
    //   237: putfield 907	c0/a:u	Z
    //   240: aload_0
    //   241: invokespecial 909	c0/a:a	()V
    //   244: getstatic 132	c0/a:w	Z
    //   247: ifeq +49 -> 296
    //   250: goto +42 -> 292
    //   253: astore_1
    //   254: goto +43 -> 297
    //   257: astore_1
    //   258: aload_0
    //   259: iconst_0
    //   260: putfield 907	c0/a:u	Z
    //   263: getstatic 132	c0/a:w	Z
    //   266: istore 4
    //   268: iload 4
    //   270: ifeq +13 -> 283
    //   273: ldc 124
    //   275: ldc_w 911
    //   278: aload_1
    //   279: invokestatic 914	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   282: pop
    //   283: aload_0
    //   284: invokespecial 909	c0/a:a	()V
    //   287: iload 4
    //   289: ifeq +7 -> 296
    //   292: aload_0
    //   293: invokespecial 916	c0/a:F	()V
    //   296: return
    //   297: aload_0
    //   298: invokespecial 909	c0/a:a	()V
    //   301: getstatic 132	c0/a:w	Z
    //   304: ifeq +7 -> 311
    //   307: aload_0
    //   308: invokespecial 916	c0/a:F	()V
    //   311: aload_1
    //   312: athrow
    //   313: new 852	java/lang/NullPointerException
    //   316: dup
    //   317: ldc_w 918
    //   320: invokespecial 855	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   323: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	324	0	this	a
    //   0	324	1	paramInputStream	InputStream
    //   5	23	2	i1	int
    //   34	35	3	localObject	Object
    //   266	22	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   6	27	253	finally
    //   35	63	253	finally
    //   63	156	253	finally
    //   159	164	253	finally
    //   167	172	253	finally
    //   175	180	253	finally
    //   183	188	253	finally
    //   191	196	253	finally
    //   199	204	253	finally
    //   207	214	253	finally
    //   217	222	253	finally
    //   225	230	253	finally
    //   230	240	253	finally
    //   258	268	253	finally
    //   273	283	253	finally
    //   6	27	257	java/io/IOException
    //   35	63	257	java/io/IOException
    //   63	156	257	java/io/IOException
    //   159	164	257	java/io/IOException
    //   167	172	257	java/io/IOException
    //   175	180	257	java/io/IOException
    //   183	188	257	java/io/IOException
    //   191	196	257	java/io/IOException
    //   199	204	257	java/io/IOException
    //   207	214	257	java/io/IOException
    //   217	222	257	java/io/IOException
    //   225	230	257	java/io/IOException
    //   230	240	257	java/io/IOException
  }
  
  private void E(b paramb, int paramInt)
    throws IOException
  {
    ByteOrder localByteOrder = G(paramb);
    this.h = localByteOrder;
    paramb.q(localByteOrder);
    int i1 = paramb.readUnsignedShort();
    int i2 = this.d;
    if ((i2 != 7) && (i2 != 10) && (i1 != 42))
    {
      paramb = new StringBuilder();
      paramb.append("Invalid start code: ");
      paramb.append(Integer.toHexString(i1));
      throw new IOException(paramb.toString());
    }
    i2 = paramb.readInt();
    if ((i2 >= 8) && (i2 < paramInt))
    {
      paramInt = i2 - 8;
      if ((paramInt > 0) && (paramb.skipBytes(paramInt) != paramInt))
      {
        paramb = new StringBuilder();
        paramb.append("Couldn't jump to first Ifd: ");
        paramb.append(paramInt);
        throw new IOException(paramb.toString());
      }
      return;
    }
    paramb = new StringBuilder();
    paramb.append("Invalid first Ifd offset: ");
    paramb.append(i2);
    throw new IOException(paramb.toString());
  }
  
  private void F()
  {
    for (int i1 = 0; i1 < this.f.length; i1++)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("The size of tag group[");
      ((StringBuilder)localObject).append(i1);
      ((StringBuilder)localObject).append("]: ");
      ((StringBuilder)localObject).append(this.f[i1].size());
      Log.d("ExifInterface", ((StringBuilder)localObject).toString());
      localObject = this.f[i1].entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        c localc = (c)localEntry.getValue();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("tagName: ");
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append(", tagType: ");
        localStringBuilder.append(localc.toString());
        localStringBuilder.append(", tagValue: '");
        localStringBuilder.append(localc.j(this.h));
        localStringBuilder.append("'");
        Log.d("ExifInterface", localStringBuilder.toString());
      }
    }
  }
  
  private ByteOrder G(b paramb)
    throws IOException
  {
    int i1 = paramb.readShort();
    if (i1 != 18761)
    {
      if (i1 == 19789)
      {
        if (w) {
          Log.d("ExifInterface", "readExifSegment: Byte Align MM");
        }
        return ByteOrder.BIG_ENDIAN;
      }
      paramb = new StringBuilder();
      paramb.append("Invalid byte order: ");
      paramb.append(Integer.toHexString(i1));
      throw new IOException(paramb.toString());
    }
    if (w) {
      Log.d("ExifInterface", "readExifSegment: Byte Align II");
    }
    return ByteOrder.LITTLE_ENDIAN;
  }
  
  private void H(byte[] paramArrayOfByte, int paramInt)
    throws IOException
  {
    b localb = new b(paramArrayOfByte);
    E(localb, paramArrayOfByte.length);
    I(localb, paramInt);
  }
  
  private void I(b paramb, int paramInt)
    throws IOException
  {
    this.g.add(Integer.valueOf(paramb.d));
    if (paramb.d + 2 > paramb.c) {
      return;
    }
    int i1 = paramb.readShort();
    boolean bool = w;
    String str = "ExifInterface";
    Object localObject1;
    if (bool)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("numberOfDirectoryEntry: ");
      ((StringBuilder)localObject1).append(i1);
      Log.d("ExifInterface", ((StringBuilder)localObject1).toString());
    }
    if ((paramb.d + i1 * 12 <= paramb.c) && (i1 > 0))
    {
      long l3;
      label1076:
      for (int i2 = 0;; i2 = (short)(i2 + 1))
      {
        int i3 = paramInt;
        if (i2 >= i1) {
          break;
        }
        int i4 = paramb.readUnsignedShort();
        int i5 = paramb.readUnsignedShort();
        int i6 = paramb.readInt();
        long l1 = paramb.j() + 4L;
        Object localObject2 = (d)o0[i3].get(Integer.valueOf(i4));
        bool = w;
        if (bool)
        {
          if (localObject2 != null) {
            localObject1 = ((d)localObject2).b;
          } else {
            localObject1 = null;
          }
          Log.d(str, String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(i4), localObject1, Integer.valueOf(i5), Integer.valueOf(i6) }));
        }
        if (localObject2 == null) {
          if (bool)
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Skip the tag entry since tag number is not defined: ");
            ((StringBuilder)localObject1).append(i4);
            Log.d(str, ((StringBuilder)localObject1).toString());
          }
        }
        long l2;
        for (;;)
        {
          break;
          if (i5 > 0)
          {
            localObject1 = Y;
            if (i5 < localObject1.length)
            {
              if (!((d)localObject2).a(i5))
              {
                if (!bool) {
                  continue;
                }
                localObject1 = new StringBuilder();
                ((StringBuilder)localObject1).append("Skip the tag entry since data format (");
                ((StringBuilder)localObject1).append(X[i5]);
                ((StringBuilder)localObject1).append(") is unexpected for tag: ");
                ((StringBuilder)localObject1).append(((d)localObject2).b);
                Log.d(str, ((StringBuilder)localObject1).toString());
                continue;
              }
              i7 = i5;
              if (i5 == 7) {
                i7 = ((d)localObject2).c;
              }
              l2 = i6 * localObject1[i7];
              if ((l2 >= 0L) && (l2 <= 2147483647L))
              {
                i5 = 1;
                l3 = l2;
                break label575;
              }
              l3 = l2;
              i5 = i7;
              if (!bool) {
                break label564;
              }
              localObject1 = new StringBuilder();
              ((StringBuilder)localObject1).append("Skip the tag entry since the number of components is invalid: ");
              ((StringBuilder)localObject1).append(i6);
              Log.d(str, ((StringBuilder)localObject1).toString());
              l3 = l2;
              i5 = i7;
              break label564;
            }
          }
          if (bool)
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Skip the tag entry since data format is invalid: ");
            ((StringBuilder)localObject1).append(i5);
            Log.d(str, ((StringBuilder)localObject1).toString());
          }
        }
        l3 = 0L;
        label564:
        int i8 = 0;
        int i7 = i5;
        i5 = i8;
        label575:
        if (i5 == 0)
        {
          paramb.c(l1);
        }
        else
        {
          Object localObject3;
          if (l3 > 4L)
          {
            i8 = paramb.readInt();
            if (bool)
            {
              localObject1 = new StringBuilder();
              ((StringBuilder)localObject1).append("seek to data offset: ");
              ((StringBuilder)localObject1).append(i8);
              Log.d(str, ((StringBuilder)localObject1).toString());
            }
            i5 = this.d;
            if (i5 == 7)
            {
              if ("MakerNote".equals(((d)localObject2).b))
              {
                this.q = i8;
              }
              else if ((i3 == 6) && ("ThumbnailImage".equals(((d)localObject2).b)))
              {
                this.r = i8;
                this.s = i6;
                localObject3 = c.f(6, this.h);
                c localc = c.b(this.r, this.h);
                localObject1 = c.b(this.s, this.h);
                this.f[4].put("Compression", localObject3);
                this.f[4].put("JPEGInterchangeFormat", localc);
                this.f[4].put("JPEGInterchangeFormatLength", localObject1);
                break label835;
              }
            }
            else if ((i5 == 10) && ("JpgFromRaw".equals(((d)localObject2).b))) {
              this.t = i8;
            }
            label835:
            l2 = i8;
            if (l2 + l3 <= paramb.c)
            {
              paramb.c(l2);
            }
            else
            {
              if (bool)
              {
                localObject1 = new StringBuilder();
                ((StringBuilder)localObject1).append("Skip the tag entry since data offset is invalid: ");
                ((StringBuilder)localObject1).append(i8);
                Log.d(str, ((StringBuilder)localObject1).toString());
              }
              paramb.c(l1);
              continue;
            }
          }
          localObject1 = (Integer)r0.get(Integer.valueOf(i4));
          if (bool)
          {
            localObject3 = new StringBuilder();
            ((StringBuilder)localObject3).append("nextIfdType: ");
            ((StringBuilder)localObject3).append(localObject1);
            ((StringBuilder)localObject3).append(" byteCount: ");
            ((StringBuilder)localObject3).append(l3);
            Log.d(str, ((StringBuilder)localObject3).toString());
          }
          if (localObject1 != null)
          {
            l3 = -1L;
            if (i7 != 3)
            {
              if (i7 != 4)
              {
                if (i7 != 8)
                {
                  if ((i7 != 9) && (i7 != 13)) {
                    break label1076;
                  }
                  i7 = paramb.readInt();
                }
                else
                {
                  i7 = paramb.readShort();
                }
              }
              else
              {
                l3 = paramb.m();
                break label1076;
              }
            }
            else {
              i7 = paramb.readUnsignedShort();
            }
            l3 = i7;
            if (bool) {
              Log.d(str, String.format("Offset: %d, tagName: %s", new Object[] { Long.valueOf(l3), ((d)localObject2).b }));
            }
            if ((l3 > 0L) && (l3 < paramb.c))
            {
              if (!this.g.contains(Integer.valueOf((int)l3)))
              {
                paramb.c(l3);
                I(paramb, ((Integer)localObject1).intValue());
              }
              else if (bool)
              {
                localObject2 = new StringBuilder();
                ((StringBuilder)localObject2).append("Skip jump into the IFD since it has already been read: IfdType ");
                ((StringBuilder)localObject2).append(localObject1);
                ((StringBuilder)localObject2).append(" (at ");
                ((StringBuilder)localObject2).append(l3);
                ((StringBuilder)localObject2).append(")");
                Log.d(str, ((StringBuilder)localObject2).toString());
              }
            }
            else if (bool)
            {
              localObject1 = new StringBuilder();
              ((StringBuilder)localObject1).append("Skip jump into the IFD since its offset is invalid: ");
              ((StringBuilder)localObject1).append(l3);
              Log.d(str, ((StringBuilder)localObject1).toString());
            }
            paramb.c(l1);
          }
          else
          {
            i5 = paramb.j();
            i3 = this.p;
            localObject1 = new byte[(int)l3];
            paramb.readFully((byte[])localObject1);
            localObject1 = new c(i7, i6, i5 + i3, (byte[])localObject1);
            this.f[paramInt].put(((d)localObject2).b, localObject1);
            if ("DNGVersion".equals(((d)localObject2).b)) {
              this.d = 3;
            }
            if (((!"Make".equals(((d)localObject2).b)) && (!"Model".equals(((d)localObject2).b))) || ((((c)localObject1).j(this.h).contains("PENTAX")) || (("Compression".equals(((d)localObject2).b)) && (((c)localObject1).i(this.h) == 65535)))) {
              this.d = 8;
            }
            if (paramb.j() != l1) {
              paramb.c(l1);
            }
          }
        }
      }
      if (paramb.j() + 4 <= paramb.c)
      {
        paramInt = paramb.readInt();
        bool = w;
        if (bool) {
          Log.d(str, String.format("nextIfdOffset: %d", new Object[] { Integer.valueOf(paramInt) }));
        }
        l3 = paramInt;
        if ((l3 > 0L) && (paramInt < paramb.c))
        {
          if (!this.g.contains(Integer.valueOf(paramInt)))
          {
            paramb.c(l3);
            if (this.f[4].isEmpty()) {
              I(paramb, 4);
            } else if (this.f[5].isEmpty()) {
              I(paramb, 5);
            }
          }
          else if (bool)
          {
            paramb = new StringBuilder();
            paramb.append("Stop reading file since re-reading an IFD may cause an infinite loop: ");
            paramb.append(paramInt);
            Log.d(str, paramb.toString());
          }
        }
        else if (bool)
        {
          paramb = new StringBuilder();
          paramb.append("Stop reading file since a wrong offset may cause an infinite loop: ");
          paramb.append(paramInt);
          Log.d(str, paramb.toString());
        }
      }
    }
  }
  
  private void J(b paramb, int paramInt)
    throws IOException
  {
    c localc1 = (c)this.f[paramInt].get("ImageLength");
    c localc2 = (c)this.f[paramInt].get("ImageWidth");
    if ((localc1 == null) || (localc2 == null))
    {
      localc2 = (c)this.f[paramInt].get("JPEGInterchangeFormat");
      if (localc2 != null) {
        h(paramb, localc2.i(this.h), paramInt);
      }
    }
  }
  
  private void K(b paramb)
    throws IOException
  {
    HashMap localHashMap = this.f[4];
    c localc = (c)localHashMap.get("Compression");
    if (localc != null)
    {
      int i1 = localc.i(this.h);
      this.o = i1;
      if (i1 != 1) {
        if (i1 != 6)
        {
          if (i1 != 7) {
            return;
          }
        }
        else
        {
          q(paramb, localHashMap);
          return;
        }
      }
      if (A(localHashMap)) {
        r(paramb, localHashMap);
      }
    }
    else
    {
      this.o = 6;
      q(paramb, localHashMap);
    }
  }
  
  private static boolean L(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 != null) && (paramArrayOfByte2 != null))
    {
      if (paramArrayOfByte1.length < paramArrayOfByte2.length) {
        return false;
      }
      for (int i1 = 0; i1 < paramArrayOfByte2.length; i1++) {
        if (paramArrayOfByte1[i1] != paramArrayOfByte2[i1]) {
          return false;
        }
      }
      return true;
    }
    return false;
  }
  
  private void M(int paramInt1, int paramInt2)
    throws IOException
  {
    if ((!this.f[paramInt1].isEmpty()) && (!this.f[paramInt2].isEmpty()))
    {
      c localc1 = (c)this.f[paramInt1].get("ImageLength");
      Object localObject = (c)this.f[paramInt1].get("ImageWidth");
      c localc2 = (c)this.f[paramInt2].get("ImageLength");
      c localc3 = (c)this.f[paramInt2].get("ImageWidth");
      if ((localc1 != null) && (localObject != null))
      {
        if ((localc2 != null) && (localc3 != null))
        {
          int i1 = localc1.i(this.h);
          int i2 = ((c)localObject).i(this.h);
          int i3 = localc2.i(this.h);
          int i4 = localc3.i(this.h);
          if ((i1 < i3) && (i2 < i4))
          {
            localObject = this.f;
            localc3 = localObject[paramInt1];
            localObject[paramInt1] = localObject[paramInt2];
            localObject[paramInt2] = localc3;
          }
        }
        else if (w)
        {
          Log.d("ExifInterface", "Second image does not contain valid size information");
        }
      }
      else if (w) {
        Log.d("ExifInterface", "First image does not contain valid size information");
      }
      return;
    }
    if (w) {
      Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
    }
  }
  
  private void N(b paramb, int paramInt)
    throws IOException
  {
    c localc1 = (c)this.f[paramInt].get("DefaultCropSize");
    c localc2 = (c)this.f[paramInt].get("SensorTopBorder");
    c localc3 = (c)this.f[paramInt].get("SensorLeftBorder");
    Object localObject = (c)this.f[paramInt].get("SensorBottomBorder");
    c localc4 = (c)this.f[paramInt].get("SensorRightBorder");
    if (localc1 != null)
    {
      if (localc1.a == 5)
      {
        localObject = (e[])localc1.k(this.h);
        if ((localObject != null) && (localObject.length == 2))
        {
          paramb = c.d(localObject[0], this.h);
          localObject = c.d(localObject[1], this.h);
        }
        else
        {
          paramb = new StringBuilder();
          paramb.append("Invalid crop size values. cropSize=");
          paramb.append(Arrays.toString((Object[])localObject));
          Log.w("ExifInterface", paramb.toString());
        }
      }
      else
      {
        localObject = (int[])localc1.k(this.h);
        if ((localObject == null) || (localObject.length != 2)) {
          break label274;
        }
        paramb = c.f(localObject[0], this.h);
        localObject = c.f(localObject[1], this.h);
      }
      this.f[paramInt].put("ImageWidth", paramb);
      this.f[paramInt].put("ImageLength", localObject);
      return;
      label274:
      paramb = new StringBuilder();
      paramb.append("Invalid crop size values. cropSize=");
      paramb.append(Arrays.toString((int[])localObject));
      Log.w("ExifInterface", paramb.toString());
    }
    else if ((localc2 != null) && (localc3 != null) && (localObject != null) && (localc4 != null))
    {
      int i1 = localc2.i(this.h);
      int i2 = ((c)localObject).i(this.h);
      int i3 = localc4.i(this.h);
      int i4 = localc3.i(this.h);
      if ((i2 > i1) && (i3 > i4))
      {
        paramb = c.f(i2 - i1, this.h);
        localObject = c.f(i3 - i4, this.h);
        this.f[paramInt].put("ImageLength", paramb);
        this.f[paramInt].put("ImageWidth", localObject);
      }
    }
    else
    {
      J(paramb, paramInt);
    }
  }
  
  private void O()
    throws IOException
  {
    M(0, 5);
    M(0, 4);
    M(5, 4);
    c localc = (c)this.f[1].get("PixelXDimension");
    Object localObject = (c)this.f[1].get("PixelYDimension");
    if ((localc != null) && (localObject != null))
    {
      this.f[0].put("ImageWidth", localc);
      this.f[0].put("ImageLength", localObject);
    }
    if ((this.f[4].isEmpty()) && (B(this.f[5])))
    {
      localObject = this.f;
      localObject[4] = localObject[5];
      localObject[5] = new HashMap();
    }
    if (!B(this.f[4])) {
      Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
    }
  }
  
  private void a()
  {
    String str = d("DateTimeOriginal");
    if ((str != null) && (d("DateTime") == null)) {
      this.f[0].put("DateTime", c.a(str));
    }
    if (d("ImageWidth") == null) {
      this.f[0].put("ImageWidth", c.b(0L, this.h));
    }
    if (d("ImageLength") == null) {
      this.f[0].put("ImageLength", c.b(0L, this.h));
    }
    if (d("Orientation") == null) {
      this.f[0].put("Orientation", c.b(0L, this.h));
    }
    if (d("LightSource") == null) {
      this.f[1].put("LightSource", c.b(0L, this.h));
    }
  }
  
  private static String b(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    for (int i1 = 0; i1 < paramArrayOfByte.length; i1++) {
      localStringBuilder.append(String.format("%02x", new Object[] { Byte.valueOf(paramArrayOfByte[i1]) }));
    }
    return localStringBuilder.toString();
  }
  
  private static long[] c(Object paramObject)
  {
    if ((paramObject instanceof int[]))
    {
      paramObject = (int[])paramObject;
      long[] arrayOfLong = new long[paramObject.length];
      for (int i1 = 0; i1 < paramObject.length; i1++) {
        arrayOfLong[i1] = paramObject[i1];
      }
      return arrayOfLong;
    }
    if ((paramObject instanceof long[])) {
      return (long[])paramObject;
    }
    return null;
  }
  
  private c f(String paramString)
  {
    if (paramString != null)
    {
      String str = paramString;
      if ("ISOSpeedRatings".equals(paramString))
      {
        if (w) {
          Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
        }
        str = "PhotographicSensitivity";
      }
      for (int i1 = 0; i1 < k0.length; i1++)
      {
        paramString = (c)this.f[i1].get(str);
        if (paramString != null) {
          return paramString;
        }
      }
      return null;
    }
    throw new NullPointerException("tag shouldn't be null");
  }
  
  private void g(b paramb)
    throws IOException
  {
    MediaMetadataRetriever localMediaMetadataRetriever = new MediaMetadataRetriever();
    try
    {
      Object localObject1 = new c0/a$a;
      ((a)localObject1).<init>(this, paramb);
      localMediaMetadataRetriever.setDataSource((MediaDataSource)localObject1);
      Object localObject2 = localMediaMetadataRetriever.extractMetadata(33);
      String str1 = localMediaMetadataRetriever.extractMetadata(34);
      Object localObject3 = localMediaMetadataRetriever.extractMetadata(26);
      localObject1 = localMediaMetadataRetriever.extractMetadata(17);
      boolean bool = "yes".equals(localObject3);
      String str2 = null;
      if (bool)
      {
        str2 = localMediaMetadataRetriever.extractMetadata(29);
        localObject1 = localMediaMetadataRetriever.extractMetadata(30);
        localObject3 = localMediaMetadataRetriever.extractMetadata(31);
      }
      else if ("yes".equals(localObject1))
      {
        str2 = localMediaMetadataRetriever.extractMetadata(18);
        localObject1 = localMediaMetadataRetriever.extractMetadata(19);
        localObject3 = localMediaMetadataRetriever.extractMetadata(24);
      }
      else
      {
        localObject1 = null;
        localObject3 = localObject1;
      }
      if (str2 != null) {
        this.f[0].put("ImageWidth", c.f(Integer.parseInt(str2), this.h));
      }
      if (localObject1 != null) {
        this.f[0].put("ImageLength", c.f(Integer.parseInt((String)localObject1), this.h));
      }
      int i1;
      int i2;
      if (localObject3 != null)
      {
        i1 = 1;
        i2 = Integer.parseInt((String)localObject3);
        if (i2 != 90)
        {
          if (i2 != 180)
          {
            if (i2 == 270) {
              i1 = 8;
            }
          }
          else {
            i1 = 3;
          }
        }
        else {
          i1 = 6;
        }
        this.f[0].put("Orientation", c.f(i1, this.h));
      }
      if ((localObject2 != null) && (str1 != null))
      {
        i1 = Integer.parseInt((String)localObject2);
        i2 = Integer.parseInt(str1);
        if (i2 > 6)
        {
          paramb.c(i1);
          localObject2 = new byte[6];
          if (paramb.read((byte[])localObject2) == 6)
          {
            i2 -= 6;
            if (Arrays.equals((byte[])localObject2, t0))
            {
              localObject2 = new byte[i2];
              if (paramb.read((byte[])localObject2) == i2)
              {
                this.p = (i1 + 6);
                H((byte[])localObject2, 0);
              }
              else
              {
                paramb = new java/io/IOException;
                paramb.<init>("Can't read exif");
                throw paramb;
              }
            }
            else
            {
              paramb = new java/io/IOException;
              paramb.<init>("Invalid identifier");
              throw paramb;
            }
          }
          else
          {
            paramb = new java/io/IOException;
            paramb.<init>("Can't read identifier");
            throw paramb;
          }
        }
        else
        {
          paramb = new java/io/IOException;
          paramb.<init>("Invalid exif length");
          throw paramb;
        }
      }
      if (w)
      {
        paramb = new java/lang/StringBuilder;
        paramb.<init>();
        paramb.append("Heif meta: ");
        paramb.append(str2);
        paramb.append("x");
        paramb.append((String)localObject1);
        paramb.append(", rotation ");
        paramb.append((String)localObject3);
        Log.d("ExifInterface", paramb.toString());
      }
      return;
    }
    finally
    {
      localMediaMetadataRetriever.release();
    }
  }
  
  private void h(b paramb, int paramInt1, int paramInt2)
    throws IOException
  {
    Object localObject;
    if (w)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("getJpegAttributes starting with: ");
      ((StringBuilder)localObject).append(paramb);
      Log.d("ExifInterface", ((StringBuilder)localObject).toString());
    }
    paramb.q(ByteOrder.BIG_ENDIAN);
    paramb.c(paramInt1);
    int i1 = paramb.readByte();
    if (i1 == -1)
    {
      int i2 = 1;
      if (paramb.readByte() == -40)
      {
        i1 = paramInt1 + 1 + 1;
        paramInt1 = i2;
        for (i2 = i1;; i2 = i1 + i2)
        {
          i1 = paramb.readByte();
          if (i1 != -1) {
            break label803;
          }
          int i3 = paramb.readByte();
          boolean bool = w;
          if (bool)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Found JPEG segment indicator: ");
            ((StringBuilder)localObject).append(Integer.toHexString(i3 & 0xFF));
            Log.d("ExifInterface", ((StringBuilder)localObject).toString());
          }
          if ((i3 == -39) || (i3 == -38)) {
            break label794;
          }
          int i4 = paramb.readUnsignedShort() - 2;
          i1 = i2 + paramInt1 + paramInt1 + 2;
          if (bool)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("JPEG segment: ");
            ((StringBuilder)localObject).append(Integer.toHexString(i3 & 0xFF));
            ((StringBuilder)localObject).append(" (length: ");
            ((StringBuilder)localObject).append(i4 + 2);
            ((StringBuilder)localObject).append(")");
            Log.d("ExifInterface", ((StringBuilder)localObject).toString());
          }
          if (i4 < 0) {
            break label783;
          }
          if (i3 != -31)
          {
            if (i3 != -2)
            {
              switch (i3)
              {
              default: 
                switch (i3)
                {
                default: 
                  switch (i3)
                  {
                  default: 
                    switch (i3)
                    {
                    }
                    break;
                  }
                  break;
                }
                break;
              }
              for (i2 = i4;; i2 = i4 - 5)
              {
                break label735;
                if (paramb.skipBytes(paramInt1) != paramInt1) {
                  break;
                }
                this.f[paramInt2].put("ImageLength", c.b(paramb.readUnsignedShort(), this.h));
                this.f[paramInt2].put("ImageWidth", c.b(paramb.readUnsignedShort(), this.h));
              }
              throw new IOException("Invalid SOFx");
            }
            localObject = new byte[i4];
            if (paramb.read((byte[])localObject) == i4)
            {
              if (d("UserComment") == null) {
                this.f[paramInt1].put("UserComment", c.a(new String((byte[])localObject, s0)));
              }
              i2 = 0;
            }
            else
            {
              throw new IOException("Invalid exif");
            }
          }
          else
          {
            localObject = new byte[i4];
            paramb.readFully((byte[])localObject);
            i2 = i1 + i4;
            byte[] arrayOfByte = t0;
            if (L((byte[])localObject, arrayOfByte))
            {
              i3 = arrayOfByte.length;
              localObject = Arrays.copyOfRange((byte[])localObject, arrayOfByte.length, i4);
              this.p = (i1 + i3);
              H((byte[])localObject, paramInt2);
            }
            else
            {
              arrayOfByte = u0;
              if (L((byte[])localObject, arrayOfByte))
              {
                i3 = arrayOfByte.length;
                localObject = Arrays.copyOfRange((byte[])localObject, arrayOfByte.length, i4);
                if (d("Xmp") == null)
                {
                  this.f[0].put("Xmp", new c(1, localObject.length, i1 + i3, (byte[])localObject));
                  paramInt1 = 1;
                  this.v = true;
                }
              }
            }
            i4 = 0;
            i1 = i2;
            i2 = i4;
          }
          label735:
          if (i2 < 0) {
            break label772;
          }
          if (paramb.skipBytes(i2) != i2) {
            break;
          }
        }
        throw new IOException("Invalid JPEG segment");
        label772:
        throw new IOException("Invalid length");
        label783:
        throw new IOException("Invalid length");
        label794:
        paramb.q(this.h);
        return;
        label803:
        paramb = new StringBuilder();
        paramb.append("Invalid marker:");
        paramb.append(Integer.toHexString(i1 & 0xFF));
        throw new IOException(paramb.toString());
      }
      paramb = new StringBuilder();
      paramb.append("Invalid marker: ");
      paramb.append(Integer.toHexString(i1 & 0xFF));
      throw new IOException(paramb.toString());
    }
    paramb = new StringBuilder();
    paramb.append("Invalid marker: ");
    paramb.append(Integer.toHexString(i1 & 0xFF));
    throw new IOException(paramb.toString());
  }
  
  private int i(BufferedInputStream paramBufferedInputStream)
    throws IOException
  {
    paramBufferedInputStream.mark(5000);
    byte[] arrayOfByte = new byte[5000];
    paramBufferedInputStream.read(arrayOfByte);
    paramBufferedInputStream.reset();
    if (u(arrayOfByte)) {
      return 4;
    }
    if (x(arrayOfByte)) {
      return 9;
    }
    if (t(arrayOfByte)) {
      return 12;
    }
    if (v(arrayOfByte)) {
      return 7;
    }
    if (y(arrayOfByte)) {
      return 10;
    }
    if (w(arrayOfByte)) {
      return 13;
    }
    if (C(arrayOfByte)) {
      return 14;
    }
    return 0;
  }
  
  private void j(b paramb)
    throws IOException
  {
    m(paramb);
    paramb = (c)this.f[1].get("MakerNote");
    if (paramb != null)
    {
      b localb = new b(paramb.d);
      localb.q(this.h);
      byte[] arrayOfByte1 = G;
      Object localObject = new byte[arrayOfByte1.length];
      localb.readFully((byte[])localObject);
      localb.c(0L);
      byte[] arrayOfByte2 = H;
      paramb = new byte[arrayOfByte2.length];
      localb.readFully(paramb);
      if (Arrays.equals((byte[])localObject, arrayOfByte1)) {
        localb.c(8L);
      } else if (Arrays.equals(paramb, arrayOfByte2)) {
        localb.c(12L);
      }
      I(localb, 6);
      localObject = (c)this.f[7].get("PreviewImageStart");
      paramb = (c)this.f[7].get("PreviewImageLength");
      if ((localObject != null) && (paramb != null))
      {
        this.f[5].put("JPEGInterchangeFormat", localObject);
        this.f[5].put("JPEGInterchangeFormatLength", paramb);
      }
      paramb = (c)this.f[8].get("AspectFrame");
      if (paramb != null)
      {
        localObject = (int[])paramb.k(this.h);
        if ((localObject != null) && (localObject.length == 4))
        {
          int i1 = localObject[2];
          int i2 = localObject[0];
          if (i1 > i2)
          {
            int i3 = localObject[3];
            int i4 = localObject[1];
            if (i3 > i4)
            {
              i1 = i1 - i2 + 1;
              i2 = i3 - i4 + 1;
              i3 = i1;
              i4 = i2;
              if (i1 < i2)
              {
                i3 = i1 + i2;
                i4 = i3 - i2;
                i3 -= i4;
              }
              localObject = c.f(i3, this.h);
              paramb = c.f(i4, this.h);
              this.f[0].put("ImageWidth", localObject);
              this.f[0].put("ImageLength", paramb);
            }
          }
        }
        else
        {
          paramb = new StringBuilder();
          paramb.append("Invalid aspect frame values. frame=");
          paramb.append(Arrays.toString((int[])localObject));
          Log.w("ExifInterface", paramb.toString());
        }
      }
    }
  }
  
  private void k(b paramb)
    throws IOException
  {
    if (w)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("getPngAttributes starting with: ");
      ((StringBuilder)localObject1).append(paramb);
      Log.d("ExifInterface", ((StringBuilder)localObject1).toString());
    }
    paramb.q(ByteOrder.BIG_ENDIAN);
    Object localObject1 = I;
    paramb.skipBytes(localObject1.length);
    int i1 = localObject1.length + 0;
    try
    {
      for (;;)
      {
        int i2 = paramb.readInt();
        localObject1 = new byte[4];
        if (paramb.read((byte[])localObject1) != 4) {
          break;
        }
        i1 = i1 + 4 + 4;
        if ((i1 == 16) && (!Arrays.equals((byte[])localObject1, K)))
        {
          paramb = new java/io/IOException;
          paramb.<init>("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
          throw paramb;
        }
        if (!Arrays.equals((byte[])localObject1, L))
        {
          if (!Arrays.equals((byte[])localObject1, J)) {
            break label309;
          }
          localObject2 = new byte[i2];
          if (paramb.read((byte[])localObject2) != i2) {
            break label267;
          }
          i2 = paramb.readInt();
          paramb = new java/util/zip/CRC32;
          paramb.<init>();
          paramb.update((byte[])localObject1);
          paramb.update((byte[])localObject2);
          if ((int)paramb.getValue() == i2)
          {
            this.p = i1;
            H((byte[])localObject2, 0);
            O();
          }
        }
        else
        {
          return;
        }
        Object localObject2 = new java/io/IOException;
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        ((StringBuilder)localObject1).append("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: ");
        ((StringBuilder)localObject1).append(i2);
        ((StringBuilder)localObject1).append(", calculated CRC value: ");
        ((StringBuilder)localObject1).append(paramb.getValue());
        ((IOException)localObject2).<init>(((StringBuilder)localObject1).toString());
        throw ((Throwable)localObject2);
        label267:
        localObject2 = new java/io/IOException;
        paramb = new java/lang/StringBuilder;
        paramb.<init>();
        paramb.append("Failed to read given length for given PNG chunk type: ");
        paramb.append(b((byte[])localObject1));
        ((IOException)localObject2).<init>(paramb.toString());
        throw ((Throwable)localObject2);
        label309:
        i2 += 4;
        paramb.skipBytes(i2);
        i1 += i2;
      }
      paramb = new java/io/IOException;
      paramb.<init>("Encountered invalid length while parsing PNG chunktype");
      throw paramb;
    }
    catch (EOFException paramb)
    {
      throw new IOException("Encountered corrupt PNG file.");
    }
  }
  
  private void l(b paramb)
    throws IOException
  {
    paramb.skipBytes(84);
    Object localObject = new byte[4];
    byte[] arrayOfByte = new byte[4];
    paramb.read((byte[])localObject);
    paramb.skipBytes(4);
    paramb.read(arrayOfByte);
    int i1 = ByteBuffer.wrap((byte[])localObject).getInt();
    int i2 = ByteBuffer.wrap(arrayOfByte).getInt();
    h(paramb, i1, 5);
    paramb.c(i2);
    paramb.q(ByteOrder.BIG_ENDIAN);
    i1 = paramb.readInt();
    if (w)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("numberOfDirectoryEntry: ");
      ((StringBuilder)localObject).append(i1);
      Log.d("ExifInterface", ((StringBuilder)localObject).toString());
    }
    for (i2 = 0; i2 < i1; i2++)
    {
      int i3 = paramb.readUnsignedShort();
      int i4 = paramb.readUnsignedShort();
      if (i3 == f0.a)
      {
        i2 = paramb.readShort();
        i1 = paramb.readShort();
        paramb = c.f(i2, this.h);
        localObject = c.f(i1, this.h);
        this.f[0].put("ImageLength", paramb);
        this.f[0].put("ImageWidth", localObject);
        if (w)
        {
          paramb = new StringBuilder();
          paramb.append("Updated to length: ");
          paramb.append(i2);
          paramb.append(", width: ");
          paramb.append(i1);
          Log.d("ExifInterface", paramb.toString());
        }
        return;
      }
      paramb.skipBytes(i4);
    }
  }
  
  private void m(b paramb)
    throws IOException
  {
    E(paramb, paramb.available());
    I(paramb, 0);
    N(paramb, 0);
    N(paramb, 5);
    N(paramb, 4);
    O();
    if (this.d == 8)
    {
      paramb = (c)this.f[1].get("MakerNote");
      if (paramb != null)
      {
        paramb = new b(paramb.d);
        paramb.q(this.h);
        paramb.c(6L);
        I(paramb, 9);
        paramb = (c)this.f[9].get("ColorSpace");
        if (paramb != null) {
          this.f[1].put("ColorSpace", paramb);
        }
      }
    }
  }
  
  private void n(b paramb)
    throws IOException
  {
    m(paramb);
    if ((c)this.f[0].get("JpgFromRaw") != null) {
      h(paramb, this.t, 5);
    }
    paramb = (c)this.f[0].get("ISO");
    c localc = (c)this.f[1].get("PhotographicSensitivity");
    if ((paramb != null) && (localc == null)) {
      this.f[1].put("PhotographicSensitivity", paramb);
    }
  }
  
  private void o(b paramb)
    throws IOException
  {
    byte[] arrayOfByte1 = t0;
    paramb.skipBytes(arrayOfByte1.length);
    byte[] arrayOfByte2 = new byte[paramb.available()];
    paramb.readFully(arrayOfByte2);
    this.p = arrayOfByte1.length;
    H(arrayOfByte2, 0);
  }
  
  private void p(b paramb)
    throws IOException
  {
    Object localObject1;
    if (w)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("getWebpAttributes starting with: ");
      ((StringBuilder)localObject1).append(paramb);
      Log.d("ExifInterface", ((StringBuilder)localObject1).toString());
    }
    paramb.q(ByteOrder.LITTLE_ENDIAN);
    paramb.skipBytes(M.length);
    int i1 = paramb.readInt() + 8;
    int i2 = paramb.skipBytes(N.length) + 8;
    try
    {
      for (;;)
      {
        localObject1 = new byte[4];
        if (paramb.read((byte[])localObject1) != 4) {
          break label282;
        }
        int i3 = paramb.readInt();
        int i4 = i2 + 4 + 4;
        if (Arrays.equals(O, (byte[])localObject1))
        {
          Object localObject2 = new byte[i3];
          if (paramb.read((byte[])localObject2) == i3)
          {
            this.p = i4;
            H((byte[])localObject2, 0);
            this.p = i4;
          }
          else
          {
            localObject2 = new java/io/IOException;
            paramb = new java/lang/StringBuilder;
            paramb.<init>();
            paramb.append("Failed to read given length for given PNG chunk type: ");
            paramb.append(b((byte[])localObject1));
            ((IOException)localObject2).<init>(paramb.toString());
            throw ((Throwable)localObject2);
          }
        }
        else
        {
          i2 = i3;
          if (i3 % 2 == 1) {
            i2 = i3 + 1;
          }
          i3 = i4 + i2;
          if (i3 != i1) {
            break label225;
          }
        }
        return;
        label225:
        if (i3 > i1) {
          break label269;
        }
        i3 = paramb.skipBytes(i2);
        if (i3 != i2) {
          break;
        }
        i2 = i4 + i3;
      }
      paramb = new java/io/IOException;
      paramb.<init>("Encountered WebP file with invalid chunk size");
      throw paramb;
      label269:
      paramb = new java/io/IOException;
      paramb.<init>("Encountered WebP file with invalid chunk size");
      throw paramb;
      label282:
      paramb = new java/io/IOException;
      paramb.<init>("Encountered invalid length while parsing WebP chunktype");
      throw paramb;
    }
    catch (EOFException paramb)
    {
      throw new IOException("Encountered corrupt WebP file.");
    }
  }
  
  private void q(b paramb, HashMap paramHashMap)
    throws IOException
  {
    c localc = (c)paramHashMap.get("JPEGInterchangeFormat");
    paramHashMap = (c)paramHashMap.get("JPEGInterchangeFormatLength");
    if ((localc != null) && (paramHashMap != null))
    {
      int i1 = localc.i(this.h);
      int i2 = paramHashMap.i(this.h);
      int i3 = i1;
      if (this.d == 7) {
        i3 = i1 + this.q;
      }
      i1 = Math.min(i2, paramb.e() - i3);
      if ((i3 > 0) && (i1 > 0))
      {
        this.i = true;
        i2 = this.p + i3;
        this.l = i2;
        this.m = i1;
        if ((this.a == null) && (this.c == null) && (this.b == null))
        {
          paramHashMap = new byte[i1];
          paramb.c(i2);
          paramb.readFully(paramHashMap);
          this.n = paramHashMap;
        }
      }
      if (w)
      {
        paramb = new StringBuilder();
        paramb.append("Setting thumbnail attributes with offset: ");
        paramb.append(i3);
        paramb.append(", length: ");
        paramb.append(i1);
        Log.d("ExifInterface", paramb.toString());
      }
    }
  }
  
  private void r(b paramb, HashMap paramHashMap)
    throws IOException
  {
    Object localObject1 = (c)paramHashMap.get("StripOffsets");
    Object localObject2 = (c)paramHashMap.get("StripByteCounts");
    if ((localObject1 != null) && (localObject2 != null))
    {
      paramHashMap = c(((c)localObject1).k(this.h));
      localObject2 = c(((c)localObject2).k(this.h));
      if ((paramHashMap != null) && (paramHashMap.length != 0))
      {
        if ((localObject2 != null) && (localObject2.length != 0))
        {
          if (paramHashMap.length != localObject2.length)
          {
            Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
            return;
          }
          long l1 = 0L;
          int i1 = localObject2.length;
          for (int i2 = 0; i2 < i1; i2++) {
            l1 += localObject2[i2];
          }
          int i3 = (int)l1;
          localObject1 = new byte[i3];
          this.k = true;
          this.j = true;
          this.i = true;
          int i4 = 0;
          i2 = i4;
          i1 = i2;
          while (i4 < paramHashMap.length)
          {
            int i5 = (int)paramHashMap[i4];
            int i6 = (int)localObject2[i4];
            if ((i4 < paramHashMap.length - 1) && (i5 + i6 != paramHashMap[(i4 + 1)])) {
              this.k = false;
            }
            i5 -= i2;
            if (i5 < 0) {
              Log.d("ExifInterface", "Invalid strip offset value");
            }
            paramb.c(i5);
            byte[] arrayOfByte = new byte[i6];
            paramb.read(arrayOfByte);
            i2 = i2 + i5 + i6;
            System.arraycopy(arrayOfByte, 0, localObject1, i1, i6);
            i1 += i6;
            i4++;
          }
          this.n = ((byte[])localObject1);
          if (this.k)
          {
            this.l = ((int)paramHashMap[0] + this.p);
            this.m = i3;
          }
        }
        else
        {
          Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
        }
      }
      else {
        Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
      }
    }
  }
  
  private static boolean s(BufferedInputStream paramBufferedInputStream)
    throws IOException
  {
    byte[] arrayOfByte = t0;
    paramBufferedInputStream.mark(arrayOfByte.length);
    arrayOfByte = new byte[arrayOfByte.length];
    paramBufferedInputStream.read(arrayOfByte);
    paramBufferedInputStream.reset();
    for (int i1 = 0;; i1++)
    {
      paramBufferedInputStream = t0;
      if (i1 >= paramBufferedInputStream.length) {
        break;
      }
      if (arrayOfByte[i1] != paramBufferedInputStream[i1]) {
        return false;
      }
    }
    return true;
  }
  
  /* Error */
  private boolean t(byte[] paramArrayOfByte)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_3
    //   5: astore 4
    //   7: new 8	c0/a$b
    //   10: astore 5
    //   12: aload_3
    //   13: astore 4
    //   15: aload 5
    //   17: aload_1
    //   18: invokespecial 1025	c0/a$b:<init>	([B)V
    //   21: aload 5
    //   23: invokevirtual 950	c0/a$b:readInt	()I
    //   26: i2l
    //   27: lstore 6
    //   29: iconst_4
    //   30: newarray byte
    //   32: astore 4
    //   34: aload 5
    //   36: aload 4
    //   38: invokevirtual 1234	java/io/InputStream:read	([B)I
    //   41: pop
    //   42: aload 4
    //   44: getstatic 158	c0/a:D	[B
    //   47: invokestatic 1236	java/util/Arrays:equals	([B[B)Z
    //   50: istore 8
    //   52: iload 8
    //   54: ifne +10 -> 64
    //   57: aload 5
    //   59: invokevirtual 1418	java/io/InputStream:close	()V
    //   62: iconst_0
    //   63: ireturn
    //   64: ldc2_w 1419
    //   67: lstore 9
    //   69: lload 6
    //   71: lconst_1
    //   72: lcmp
    //   73: ifne +30 -> 103
    //   76: aload 5
    //   78: invokevirtual 1423	c0/a$b:readLong	()J
    //   81: lstore 11
    //   83: lload 11
    //   85: lstore 6
    //   87: lload 11
    //   89: ldc2_w 1419
    //   92: lcmp
    //   93: ifge +15 -> 108
    //   96: aload 5
    //   98: invokevirtual 1418	java/io/InputStream:close	()V
    //   101: iconst_0
    //   102: ireturn
    //   103: ldc2_w 1312
    //   106: lstore 9
    //   108: lload 6
    //   110: lstore 11
    //   112: lload 6
    //   114: aload_1
    //   115: arraylength
    //   116: i2l
    //   117: lcmp
    //   118: ifle +12 -> 130
    //   121: aload_1
    //   122: arraylength
    //   123: istore 13
    //   125: iload 13
    //   127: i2l
    //   128: lstore 11
    //   130: lload 11
    //   132: lload 9
    //   134: lsub
    //   135: lstore 9
    //   137: lload 9
    //   139: ldc2_w 1312
    //   142: lcmp
    //   143: ifge +10 -> 153
    //   146: aload 5
    //   148: invokevirtual 1418	java/io/InputStream:close	()V
    //   151: iconst_0
    //   152: ireturn
    //   153: iconst_4
    //   154: newarray byte
    //   156: astore_1
    //   157: lconst_0
    //   158: lstore 6
    //   160: iconst_0
    //   161: istore 13
    //   163: iload 13
    //   165: istore 14
    //   167: lload 6
    //   169: lload 9
    //   171: ldc2_w 1041
    //   174: ldiv
    //   175: lcmp
    //   176: ifge +125 -> 301
    //   179: aload 5
    //   181: aload_1
    //   182: invokevirtual 1234	java/io/InputStream:read	([B)I
    //   185: istore 15
    //   187: iload 15
    //   189: iconst_4
    //   190: if_icmpeq +10 -> 200
    //   193: aload 5
    //   195: invokevirtual 1418	java/io/InputStream:close	()V
    //   198: iconst_0
    //   199: ireturn
    //   200: lload 6
    //   202: lconst_1
    //   203: lcmp
    //   204: ifne +10 -> 214
    //   207: iload 14
    //   209: istore 16
    //   211: goto +77 -> 288
    //   214: aload_1
    //   215: getstatic 163	c0/a:E	[B
    //   218: invokestatic 1236	java/util/Arrays:equals	([B[B)Z
    //   221: ifeq +9 -> 230
    //   224: iconst_1
    //   225: istore 15
    //   227: goto +28 -> 255
    //   230: aload_1
    //   231: getstatic 168	c0/a:F	[B
    //   234: invokestatic 1236	java/util/Arrays:equals	([B[B)Z
    //   237: istore 8
    //   239: iload 13
    //   241: istore 15
    //   243: iload 8
    //   245: ifeq +10 -> 255
    //   248: iconst_1
    //   249: istore 14
    //   251: iload 13
    //   253: istore 15
    //   255: iload 15
    //   257: istore 13
    //   259: iload 14
    //   261: istore 16
    //   263: iload 15
    //   265: ifeq +23 -> 288
    //   268: iload 15
    //   270: istore 13
    //   272: iload 14
    //   274: istore 16
    //   276: iload 14
    //   278: ifeq +10 -> 288
    //   281: aload 5
    //   283: invokevirtual 1418	java/io/InputStream:close	()V
    //   286: iconst_1
    //   287: ireturn
    //   288: lload 6
    //   290: lconst_1
    //   291: ladd
    //   292: lstore 6
    //   294: iload 16
    //   296: istore 14
    //   298: goto -131 -> 167
    //   301: aload 5
    //   303: invokevirtual 1418	java/io/InputStream:close	()V
    //   306: goto +62 -> 368
    //   309: astore_1
    //   310: aload 5
    //   312: astore 4
    //   314: goto +56 -> 370
    //   317: astore 4
    //   319: aload 5
    //   321: astore_1
    //   322: aload 4
    //   324: astore 5
    //   326: goto +11 -> 337
    //   329: astore_1
    //   330: goto +40 -> 370
    //   333: astore 5
    //   335: aload_2
    //   336: astore_1
    //   337: aload_1
    //   338: astore 4
    //   340: getstatic 132	c0/a:w	Z
    //   343: ifeq +17 -> 360
    //   346: aload_1
    //   347: astore 4
    //   349: ldc 124
    //   351: ldc_w 1425
    //   354: aload 5
    //   356: invokestatic 1427	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   359: pop
    //   360: aload_1
    //   361: ifnull +7 -> 368
    //   364: aload_1
    //   365: invokevirtual 1418	java/io/InputStream:close	()V
    //   368: iconst_0
    //   369: ireturn
    //   370: aload 4
    //   372: ifnull +8 -> 380
    //   375: aload 4
    //   377: invokevirtual 1418	java/io/InputStream:close	()V
    //   380: aload_1
    //   381: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	382	0	this	a
    //   0	382	1	paramArrayOfByte	byte[]
    //   1	335	2	localObject1	Object
    //   3	10	3	localObject2	Object
    //   5	308	4	localObject3	Object
    //   317	6	4	localException1	Exception
    //   338	38	4	arrayOfByte	byte[]
    //   10	315	5	localObject4	Object
    //   333	22	5	localException2	Exception
    //   27	266	6	l1	long
    //   50	194	8	bool	boolean
    //   67	103	9	l2	long
    //   81	50	11	l3	long
    //   123	148	13	i1	int
    //   165	132	14	i2	int
    //   185	84	15	i3	int
    //   209	86	16	i4	int
    // Exception table:
    //   from	to	target	type
    //   21	52	309	finally
    //   76	83	309	finally
    //   112	125	309	finally
    //   153	157	309	finally
    //   167	187	309	finally
    //   214	224	309	finally
    //   230	239	309	finally
    //   21	52	317	java/lang/Exception
    //   76	83	317	java/lang/Exception
    //   112	125	317	java/lang/Exception
    //   153	157	317	java/lang/Exception
    //   167	187	317	java/lang/Exception
    //   214	224	317	java/lang/Exception
    //   230	239	317	java/lang/Exception
    //   7	12	329	finally
    //   15	21	329	finally
    //   340	346	329	finally
    //   349	360	329	finally
    //   7	12	333	java/lang/Exception
    //   15	21	333	java/lang/Exception
  }
  
  private static boolean u(byte[] paramArrayOfByte)
    throws IOException
  {
    for (int i1 = 0;; i1++)
    {
      byte[] arrayOfByte = C;
      if (i1 >= arrayOfByte.length) {
        break;
      }
      if (paramArrayOfByte[i1] != arrayOfByte[i1]) {
        return false;
      }
    }
    return true;
  }
  
  /* Error */
  private boolean v(byte[] paramArrayOfByte)
    throws IOException
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aconst_null
    //   5: astore 4
    //   7: new 8	c0/a$b
    //   10: astore 5
    //   12: aload 5
    //   14: aload_1
    //   15: invokespecial 1025	c0/a$b:<init>	([B)V
    //   18: aload_0
    //   19: aload 5
    //   21: invokespecial 922	c0/a:G	(Lc0/a$b;)Ljava/nio/ByteOrder;
    //   24: astore_1
    //   25: aload_0
    //   26: aload_1
    //   27: putfield 816	c0/a:h	Ljava/nio/ByteOrder;
    //   30: aload 5
    //   32: aload_1
    //   33: invokevirtual 925	c0/a$b:q	(Ljava/nio/ByteOrder;)V
    //   36: aload 5
    //   38: invokevirtual 1012	c0/a$b:readShort	()S
    //   41: istore 6
    //   43: iload 6
    //   45: sipush 20306
    //   48: if_icmpeq +11 -> 59
    //   51: iload 6
    //   53: sipush 21330
    //   56: if_icmpne +5 -> 61
    //   59: iconst_1
    //   60: istore_2
    //   61: aload 5
    //   63: invokevirtual 1418	java/io/InputStream:close	()V
    //   66: iload_2
    //   67: ireturn
    //   68: astore_1
    //   69: goto +12 -> 81
    //   72: astore_1
    //   73: goto +20 -> 93
    //   76: astore_1
    //   77: aload 4
    //   79: astore 5
    //   81: aload 5
    //   83: ifnull +8 -> 91
    //   86: aload 5
    //   88: invokevirtual 1418	java/io/InputStream:close	()V
    //   91: aload_1
    //   92: athrow
    //   93: aload 5
    //   95: ifnull +8 -> 103
    //   98: aload 5
    //   100: invokevirtual 1418	java/io/InputStream:close	()V
    //   103: iconst_0
    //   104: ireturn
    //   105: astore_1
    //   106: aload_3
    //   107: astore 5
    //   109: goto -16 -> 93
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	a
    //   0	112	1	paramArrayOfByte	byte[]
    //   1	66	2	bool	boolean
    //   3	104	3	localObject1	Object
    //   5	73	4	localObject2	Object
    //   10	98	5	localObject3	Object
    //   41	16	6	i1	int
    // Exception table:
    //   from	to	target	type
    //   18	43	68	finally
    //   18	43	72	java/lang/Exception
    //   7	18	76	finally
    //   7	18	105	java/lang/Exception
  }
  
  private boolean w(byte[] paramArrayOfByte)
    throws IOException
  {
    for (int i1 = 0;; i1++)
    {
      byte[] arrayOfByte = I;
      if (i1 >= arrayOfByte.length) {
        break;
      }
      if (paramArrayOfByte[i1] != arrayOfByte[i1]) {
        return false;
      }
    }
    return true;
  }
  
  private boolean x(byte[] paramArrayOfByte)
    throws IOException
  {
    byte[] arrayOfByte = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
    for (int i1 = 0; i1 < arrayOfByte.length; i1++) {
      if (paramArrayOfByte[i1] != arrayOfByte[i1]) {
        return false;
      }
    }
    return true;
  }
  
  /* Error */
  private boolean y(byte[] paramArrayOfByte)
    throws IOException
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aconst_null
    //   5: astore 4
    //   7: new 8	c0/a$b
    //   10: astore 5
    //   12: aload 5
    //   14: aload_1
    //   15: invokespecial 1025	c0/a$b:<init>	([B)V
    //   18: aload_0
    //   19: aload 5
    //   21: invokespecial 922	c0/a:G	(Lc0/a$b;)Ljava/nio/ByteOrder;
    //   24: astore_1
    //   25: aload_0
    //   26: aload_1
    //   27: putfield 816	c0/a:h	Ljava/nio/ByteOrder;
    //   30: aload 5
    //   32: aload_1
    //   33: invokevirtual 925	c0/a$b:q	(Ljava/nio/ByteOrder;)V
    //   36: aload 5
    //   38: invokevirtual 1012	c0/a$b:readShort	()S
    //   41: istore 6
    //   43: iload 6
    //   45: bipush 85
    //   47: if_icmpne +5 -> 52
    //   50: iconst_1
    //   51: istore_2
    //   52: aload 5
    //   54: invokevirtual 1418	java/io/InputStream:close	()V
    //   57: iload_2
    //   58: ireturn
    //   59: astore_1
    //   60: goto +15 -> 75
    //   63: astore_1
    //   64: aload 5
    //   66: astore_1
    //   67: goto +20 -> 87
    //   70: astore_1
    //   71: aload 4
    //   73: astore 5
    //   75: aload 5
    //   77: ifnull +8 -> 85
    //   80: aload 5
    //   82: invokevirtual 1418	java/io/InputStream:close	()V
    //   85: aload_1
    //   86: athrow
    //   87: aload_1
    //   88: ifnull +7 -> 95
    //   91: aload_1
    //   92: invokevirtual 1418	java/io/InputStream:close	()V
    //   95: iconst_0
    //   96: ireturn
    //   97: astore_1
    //   98: aload_3
    //   99: astore_1
    //   100: goto -13 -> 87
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	this	a
    //   0	103	1	paramArrayOfByte	byte[]
    //   1	57	2	bool	boolean
    //   3	96	3	localObject1	Object
    //   5	67	4	localObject2	Object
    //   10	71	5	localObject3	Object
    //   41	7	6	i1	int
    // Exception table:
    //   from	to	target	type
    //   18	43	59	finally
    //   18	43	63	java/lang/Exception
    //   7	18	70	finally
    //   7	18	97	java/lang/Exception
  }
  
  private static boolean z(FileDescriptor paramFileDescriptor)
  {
    try
    {
      Os.lseek(paramFileDescriptor, 0L, OsConstants.SEEK_CUR);
      return true;
    }
    catch (Exception paramFileDescriptor)
    {
      if (w) {
        Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
      }
    }
    return false;
  }
  
  public String d(String paramString)
  {
    Object localObject;
    if (paramString != null)
    {
      localObject = f(paramString);
      if (localObject != null)
      {
        if (!q0.contains(paramString)) {
          return ((c)localObject).j(this.h);
        }
        if (paramString.equals("GPSTimeStamp"))
        {
          int i1 = ((c)localObject).a;
          if ((i1 != 5) && (i1 != 10))
          {
            paramString = new StringBuilder();
            paramString.append("GPS Timestamp format is not rational. format=");
            paramString.append(((c)localObject).a);
            Log.w("ExifInterface", paramString.toString());
            return null;
          }
          paramString = (e[])((c)localObject).k(this.h);
          if ((paramString != null) && (paramString.length == 3))
          {
            localObject = paramString[0];
            int i2 = (int)((float)((e)localObject).a / (float)((e)localObject).b);
            localObject = paramString[1];
            i1 = (int)((float)((e)localObject).a / (float)((e)localObject).b);
            paramString = paramString[2];
            return String.format("%02d:%02d:%02d", new Object[] { Integer.valueOf(i2), Integer.valueOf(i1), Integer.valueOf((int)((float)paramString.a / (float)paramString.b)) });
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Invalid GPS Timestamp array. array=");
          ((StringBuilder)localObject).append(Arrays.toString(paramString));
          Log.w("ExifInterface", ((StringBuilder)localObject).toString());
          return null;
        }
      }
    }
    try
    {
      paramString = Double.toString(((c)localObject).h(this.h));
      return paramString;
    }
    catch (NumberFormatException paramString)
    {
      label255:
      break label255;
    }
    return null;
    throw new NullPointerException("tag shouldn't be null");
  }
  
  public int e(String paramString, int paramInt)
  {
    if (paramString != null)
    {
      paramString = f(paramString);
      if (paramString == null) {
        return paramInt;
      }
      try
      {
        int i1 = paramString.i(this.h);
        return i1;
      }
      catch (NumberFormatException paramString)
      {
        return paramInt;
      }
    }
    throw new NullPointerException("tag shouldn't be null");
  }
  
  class a
    extends MediaDataSource
  {
    long a;
    
    a(a.b paramb) {}
    
    public void close()
      throws IOException
    {}
    
    public long getSize()
      throws IOException
    {
      return -1L;
    }
    
    public int readAt(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      if (paramInt2 == 0) {
        return 0;
      }
      if (paramLong < 0L) {
        return -1;
      }
      try
      {
        long l = this.a;
        if (l != paramLong)
        {
          if ((l >= 0L) && (paramLong >= l + this.b.available())) {
            return -1;
          }
          this.b.c(paramLong);
          this.a = paramLong;
        }
        int i = paramInt2;
        if (paramInt2 > this.b.available()) {
          i = this.b.available();
        }
        paramInt1 = this.b.read(paramArrayOfByte, paramInt1, i);
        if (paramInt1 >= 0)
        {
          this.a += paramInt1;
          return paramInt1;
        }
      }
      catch (IOException paramArrayOfByte)
      {
        label125:
        break label125;
      }
      this.a = -1L;
      return -1;
    }
  }
  
  private static class b
    extends InputStream
    implements DataInput
  {
    private static final ByteOrder e = ByteOrder.LITTLE_ENDIAN;
    private static final ByteOrder f = ByteOrder.BIG_ENDIAN;
    private DataInputStream a;
    private ByteOrder b = ByteOrder.BIG_ENDIAN;
    final int c;
    int d;
    
    public b(InputStream paramInputStream)
      throws IOException
    {
      this(paramInputStream, ByteOrder.BIG_ENDIAN);
    }
    
    b(InputStream paramInputStream, ByteOrder paramByteOrder)
      throws IOException
    {
      paramInputStream = new DataInputStream(paramInputStream);
      this.a = paramInputStream;
      int i = paramInputStream.available();
      this.c = i;
      this.d = 0;
      this.a.mark(i);
      this.b = paramByteOrder;
    }
    
    public b(byte[] paramArrayOfByte)
      throws IOException
    {
      this(new ByteArrayInputStream(paramArrayOfByte));
    }
    
    public int available()
      throws IOException
    {
      return this.a.available();
    }
    
    public void c(long paramLong)
      throws IOException
    {
      int i = this.d;
      if (i > paramLong)
      {
        this.d = 0;
        this.a.reset();
        this.a.mark(this.c);
      }
      else
      {
        paramLong -= i;
      }
      i = (int)paramLong;
      if (skipBytes(i) == i) {
        return;
      }
      throw new IOException("Couldn't seek up to the byteCount");
    }
    
    public int e()
    {
      return this.c;
    }
    
    public int j()
    {
      return this.d;
    }
    
    public long m()
      throws IOException
    {
      return readInt() & 0xFFFFFFFF;
    }
    
    public void q(ByteOrder paramByteOrder)
    {
      this.b = paramByteOrder;
    }
    
    public int read()
      throws IOException
    {
      this.d += 1;
      return this.a.read();
    }
    
    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      paramInt1 = this.a.read(paramArrayOfByte, paramInt1, paramInt2);
      this.d += paramInt1;
      return paramInt1;
    }
    
    public boolean readBoolean()
      throws IOException
    {
      this.d += 1;
      return this.a.readBoolean();
    }
    
    public byte readByte()
      throws IOException
    {
      int i = this.d + 1;
      this.d = i;
      if (i <= this.c)
      {
        i = this.a.read();
        if (i >= 0) {
          return (byte)i;
        }
        throw new EOFException();
      }
      throw new EOFException();
    }
    
    public char readChar()
      throws IOException
    {
      this.d += 2;
      return this.a.readChar();
    }
    
    public double readDouble()
      throws IOException
    {
      return Double.longBitsToDouble(readLong());
    }
    
    public float readFloat()
      throws IOException
    {
      return Float.intBitsToFloat(readInt());
    }
    
    public void readFully(byte[] paramArrayOfByte)
      throws IOException
    {
      int i = this.d + paramArrayOfByte.length;
      this.d = i;
      if (i <= this.c)
      {
        if (this.a.read(paramArrayOfByte, 0, paramArrayOfByte.length) == paramArrayOfByte.length) {
          return;
        }
        throw new IOException("Couldn't read up to the length of buffer");
      }
      throw new EOFException();
    }
    
    public void readFully(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      int i = this.d + paramInt2;
      this.d = i;
      if (i <= this.c)
      {
        if (this.a.read(paramArrayOfByte, paramInt1, paramInt2) == paramInt2) {
          return;
        }
        throw new IOException("Couldn't read up to the length of buffer");
      }
      throw new EOFException();
    }
    
    public int readInt()
      throws IOException
    {
      int i = this.d + 4;
      this.d = i;
      if (i <= this.c)
      {
        int j = this.a.read();
        i = this.a.read();
        int k = this.a.read();
        int m = this.a.read();
        if ((j | i | k | m) >= 0)
        {
          Object localObject = this.b;
          if (localObject == e) {
            return (m << 24) + (k << 16) + (i << 8) + j;
          }
          if (localObject == f) {
            return (j << 24) + (i << 16) + (k << 8) + m;
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Invalid byte order: ");
          ((StringBuilder)localObject).append(this.b);
          throw new IOException(((StringBuilder)localObject).toString());
        }
        throw new EOFException();
      }
      throw new EOFException();
    }
    
    public String readLine()
      throws IOException
    {
      Log.d("ExifInterface", "Currently unsupported");
      return null;
    }
    
    public long readLong()
      throws IOException
    {
      int i = this.d + 8;
      this.d = i;
      if (i <= this.c)
      {
        int j = this.a.read();
        i = this.a.read();
        int k = this.a.read();
        int m = this.a.read();
        int n = this.a.read();
        int i1 = this.a.read();
        int i2 = this.a.read();
        int i3 = this.a.read();
        if ((j | i | k | m | n | i1 | i2 | i3) >= 0)
        {
          Object localObject = this.b;
          if (localObject == e) {
            return (i3 << 56) + (i2 << 48) + (i1 << 40) + (n << 32) + (m << 24) + (k << 16) + (i << 8) + j;
          }
          if (localObject == f) {
            return (j << 56) + (i << 48) + (k << 40) + (m << 32) + (n << 24) + (i1 << 16) + (i2 << 8) + i3;
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Invalid byte order: ");
          ((StringBuilder)localObject).append(this.b);
          throw new IOException(((StringBuilder)localObject).toString());
        }
        throw new EOFException();
      }
      throw new EOFException();
    }
    
    public short readShort()
      throws IOException
    {
      int i = this.d + 2;
      this.d = i;
      if (i <= this.c)
      {
        int j = this.a.read();
        i = this.a.read();
        if ((j | i) >= 0)
        {
          Object localObject = this.b;
          if (localObject == e) {
            return (short)((i << 8) + j);
          }
          if (localObject == f) {
            return (short)((j << 8) + i);
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Invalid byte order: ");
          ((StringBuilder)localObject).append(this.b);
          throw new IOException(((StringBuilder)localObject).toString());
        }
        throw new EOFException();
      }
      throw new EOFException();
    }
    
    public String readUTF()
      throws IOException
    {
      this.d += 2;
      return this.a.readUTF();
    }
    
    public int readUnsignedByte()
      throws IOException
    {
      this.d += 1;
      return this.a.readUnsignedByte();
    }
    
    public int readUnsignedShort()
      throws IOException
    {
      int i = this.d + 2;
      this.d = i;
      if (i <= this.c)
      {
        i = this.a.read();
        int j = this.a.read();
        if ((i | j) >= 0)
        {
          Object localObject = this.b;
          if (localObject == e) {
            return (j << 8) + i;
          }
          if (localObject == f) {
            return (i << 8) + j;
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Invalid byte order: ");
          ((StringBuilder)localObject).append(this.b);
          throw new IOException(((StringBuilder)localObject).toString());
        }
        throw new EOFException();
      }
      throw new EOFException();
    }
    
    public int skipBytes(int paramInt)
      throws IOException
    {
      int i = Math.min(paramInt, this.c - this.d);
      paramInt = 0;
      while (paramInt < i) {
        paramInt += this.a.skipBytes(i - paramInt);
      }
      this.d += paramInt;
      return paramInt;
    }
  }
  
  private static class c
  {
    public final int a;
    public final int b;
    public final long c;
    public final byte[] d;
    
    c(int paramInt1, int paramInt2, long paramLong, byte[] paramArrayOfByte)
    {
      this.a = paramInt1;
      this.b = paramInt2;
      this.c = paramLong;
      this.d = paramArrayOfByte;
    }
    
    c(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
    {
      this(paramInt1, paramInt2, -1L, paramArrayOfByte);
    }
    
    public static c a(String paramString)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append('\000');
      paramString = localStringBuilder.toString().getBytes(a.s0);
      return new c(2, paramString.length, paramString);
    }
    
    public static c b(long paramLong, ByteOrder paramByteOrder)
    {
      return c(new long[] { paramLong }, paramByteOrder);
    }
    
    public static c c(long[] paramArrayOfLong, ByteOrder paramByteOrder)
    {
      ByteBuffer localByteBuffer = ByteBuffer.wrap(new byte[a.Y[4] * paramArrayOfLong.length]);
      localByteBuffer.order(paramByteOrder);
      int i = paramArrayOfLong.length;
      for (int j = 0; j < i; j++) {
        localByteBuffer.putInt((int)paramArrayOfLong[j]);
      }
      return new c(4, paramArrayOfLong.length, localByteBuffer.array());
    }
    
    public static c d(a.e parame, ByteOrder paramByteOrder)
    {
      return e(new a.e[] { parame }, paramByteOrder);
    }
    
    public static c e(a.e[] paramArrayOfe, ByteOrder paramByteOrder)
    {
      ByteBuffer localByteBuffer = ByteBuffer.wrap(new byte[a.Y[5] * paramArrayOfe.length]);
      localByteBuffer.order(paramByteOrder);
      int i = paramArrayOfe.length;
      for (int j = 0; j < i; j++)
      {
        paramByteOrder = paramArrayOfe[j];
        localByteBuffer.putInt((int)paramByteOrder.a);
        localByteBuffer.putInt((int)paramByteOrder.b);
      }
      return new c(5, paramArrayOfe.length, localByteBuffer.array());
    }
    
    public static c f(int paramInt, ByteOrder paramByteOrder)
    {
      return g(new int[] { paramInt }, paramByteOrder);
    }
    
    public static c g(int[] paramArrayOfInt, ByteOrder paramByteOrder)
    {
      ByteBuffer localByteBuffer = ByteBuffer.wrap(new byte[a.Y[3] * paramArrayOfInt.length]);
      localByteBuffer.order(paramByteOrder);
      int i = paramArrayOfInt.length;
      for (int j = 0; j < i; j++) {
        localByteBuffer.putShort((short)paramArrayOfInt[j]);
      }
      return new c(3, paramArrayOfInt.length, localByteBuffer.array());
    }
    
    public double h(ByteOrder paramByteOrder)
    {
      paramByteOrder = k(paramByteOrder);
      if (paramByteOrder != null)
      {
        if ((paramByteOrder instanceof String)) {
          return Double.parseDouble((String)paramByteOrder);
        }
        if ((paramByteOrder instanceof long[]))
        {
          paramByteOrder = (long[])paramByteOrder;
          if (paramByteOrder.length == 1) {
            return paramByteOrder[0];
          }
          throw new NumberFormatException("There are more than one component");
        }
        if ((paramByteOrder instanceof int[]))
        {
          paramByteOrder = (int[])paramByteOrder;
          if (paramByteOrder.length == 1) {
            return paramByteOrder[0];
          }
          throw new NumberFormatException("There are more than one component");
        }
        if ((paramByteOrder instanceof double[]))
        {
          paramByteOrder = (double[])paramByteOrder;
          if (paramByteOrder.length == 1) {
            return paramByteOrder[0];
          }
          throw new NumberFormatException("There are more than one component");
        }
        if ((paramByteOrder instanceof a.e[]))
        {
          paramByteOrder = (a.e[])paramByteOrder;
          if (paramByteOrder.length == 1) {
            return paramByteOrder[0].a();
          }
          throw new NumberFormatException("There are more than one component");
        }
        throw new NumberFormatException("Couldn't find a double value");
      }
      throw new NumberFormatException("NULL can't be converted to a double value");
    }
    
    public int i(ByteOrder paramByteOrder)
    {
      paramByteOrder = k(paramByteOrder);
      if (paramByteOrder != null)
      {
        if ((paramByteOrder instanceof String)) {
          return Integer.parseInt((String)paramByteOrder);
        }
        if ((paramByteOrder instanceof long[]))
        {
          paramByteOrder = (long[])paramByteOrder;
          if (paramByteOrder.length == 1) {
            return (int)paramByteOrder[0];
          }
          throw new NumberFormatException("There are more than one component");
        }
        if ((paramByteOrder instanceof int[]))
        {
          paramByteOrder = (int[])paramByteOrder;
          if (paramByteOrder.length == 1) {
            return paramByteOrder[0];
          }
          throw new NumberFormatException("There are more than one component");
        }
        throw new NumberFormatException("Couldn't find a integer value");
      }
      throw new NumberFormatException("NULL can't be converted to a integer value");
    }
    
    public String j(ByteOrder paramByteOrder)
    {
      Object localObject = k(paramByteOrder);
      if (localObject == null) {
        return null;
      }
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      paramByteOrder = new StringBuilder();
      boolean bool = localObject instanceof long[];
      int i = 0;
      int j = 0;
      int k = 0;
      int m = 0;
      if (bool)
      {
        localObject = (long[])localObject;
        while (m < localObject.length)
        {
          paramByteOrder.append(localObject[m]);
          i = m + 1;
          m = i;
          if (i != localObject.length)
          {
            paramByteOrder.append(",");
            m = i;
          }
        }
        return paramByteOrder.toString();
      }
      if ((localObject instanceof int[]))
      {
        localObject = (int[])localObject;
        m = i;
        while (m < localObject.length)
        {
          paramByteOrder.append(localObject[m]);
          i = m + 1;
          m = i;
          if (i != localObject.length)
          {
            paramByteOrder.append(",");
            m = i;
          }
        }
        return paramByteOrder.toString();
      }
      if ((localObject instanceof double[]))
      {
        localObject = (double[])localObject;
        m = j;
        while (m < localObject.length)
        {
          paramByteOrder.append(localObject[m]);
          i = m + 1;
          m = i;
          if (i != localObject.length)
          {
            paramByteOrder.append(",");
            m = i;
          }
        }
        return paramByteOrder.toString();
      }
      if ((localObject instanceof a.e[]))
      {
        localObject = (a.e[])localObject;
        m = k;
        while (m < localObject.length)
        {
          paramByteOrder.append(localObject[m].a);
          paramByteOrder.append('/');
          paramByteOrder.append(localObject[m].b);
          i = m + 1;
          m = i;
          if (i != localObject.length)
          {
            paramByteOrder.append(",");
            m = i;
          }
        }
        return paramByteOrder.toString();
      }
      return null;
    }
    
    /* Error */
    Object k(ByteOrder paramByteOrder)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: new 168	c0/a$b
      //   5: astore_3
      //   6: aload_3
      //   7: aload_0
      //   8: getfield 26	c0/a$c:d	[B
      //   11: invokespecial 171	c0/a$b:<init>	([B)V
      //   14: aload_3
      //   15: astore_2
      //   16: aload_3
      //   17: aload_1
      //   18: invokevirtual 175	c0/a$b:q	(Ljava/nio/ByteOrder;)V
      //   21: aload_3
      //   22: astore_2
      //   23: aload_0
      //   24: getfield 20	c0/a$c:a	I
      //   27: istore 4
      //   29: iconst_0
      //   30: istore 5
      //   32: iconst_0
      //   33: istore 6
      //   35: iconst_0
      //   36: istore 7
      //   38: iconst_0
      //   39: istore 8
      //   41: iconst_0
      //   42: istore 9
      //   44: iconst_0
      //   45: istore 10
      //   47: iconst_0
      //   48: istore 11
      //   50: iconst_0
      //   51: istore 12
      //   53: iconst_0
      //   54: istore 13
      //   56: iconst_1
      //   57: istore 14
      //   59: iload 4
      //   61: tableswitch	default:+63 -> 124, 1:+746->807, 2:+561->622, 3:+502->563, 4:+443->504, 5:+372->433, 6:+746->807, 7:+561->622, 8:+313->374, 9:+254->315, 10:+181->242, 11:+121->182, 12:+66->127
      //   125: iconst_0
      //   126: ldc2_w 11597
      //   129: aload_0
      //   130: getfield 22	c0/a$c:b	I
      //   133: newarray double
      //   135: astore_1
      //   136: aload_3
      //   137: astore_2
      //   138: iload 13
      //   140: aload_0
      //   141: getfield 22	c0/a$c:b	I
      //   144: if_icmpge +19 -> 163
      //   147: aload_3
      //   148: astore_2
      //   149: aload_1
      //   150: iload 13
      //   152: aload_3
      //   153: invokevirtual 178	c0/a$b:readDouble	()D
      //   156: dastore
      //   157: iinc 13 1
      //   160: goto -24 -> 136
      //   163: aload_3
      //   164: invokevirtual 183	java/io/InputStream:close	()V
      //   167: goto +13 -> 180
      //   170: astore_2
      //   171: ldc 185
      //   173: ldc 187
      //   175: aload_2
      //   176: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   179: pop
      //   180: aload_1
      //   181: areturn
      //   182: aload_3
      //   183: astore_2
      //   184: aload_0
      //   185: getfield 22	c0/a$c:b	I
      //   188: newarray double
      //   190: astore_1
      //   191: iload 5
      //   193: istore 13
      //   195: aload_3
      //   196: astore_2
      //   197: iload 13
      //   199: aload_0
      //   200: getfield 22	c0/a$c:b	I
      //   203: if_icmpge +20 -> 223
      //   206: aload_3
      //   207: astore_2
      //   208: aload_1
      //   209: iload 13
      //   211: aload_3
      //   212: invokevirtual 196	c0/a$b:readFloat	()F
      //   215: f2d
      //   216: dastore
      //   217: iinc 13 1
      //   220: goto -25 -> 195
      //   223: aload_3
      //   224: invokevirtual 183	java/io/InputStream:close	()V
      //   227: goto +13 -> 240
      //   230: astore_2
      //   231: ldc 185
      //   233: ldc 187
      //   235: aload_2
      //   236: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   239: pop
      //   240: aload_1
      //   241: areturn
      //   242: aload_3
      //   243: astore_2
      //   244: aload_0
      //   245: getfield 22	c0/a$c:b	I
      //   248: anewarray 88	c0/a$e
      //   251: astore_1
      //   252: iload 6
      //   254: istore 13
      //   256: aload_3
      //   257: astore_2
      //   258: iload 13
      //   260: aload_0
      //   261: getfield 22	c0/a$c:b	I
      //   264: if_icmpge +32 -> 296
      //   267: aload_3
      //   268: astore_2
      //   269: aload_1
      //   270: iload 13
      //   272: new 88	c0/a$e
      //   275: dup
      //   276: aload_3
      //   277: invokevirtual 200	c0/a$b:readInt	()I
      //   280: i2l
      //   281: aload_3
      //   282: invokevirtual 200	c0/a$b:readInt	()I
      //   285: i2l
      //   286: invokespecial 203	c0/a$e:<init>	(JJ)V
      //   289: aastore
      //   290: iinc 13 1
      //   293: goto -37 -> 256
      //   296: aload_3
      //   297: invokevirtual 183	java/io/InputStream:close	()V
      //   300: goto +13 -> 313
      //   303: astore_2
      //   304: ldc 185
      //   306: ldc 187
      //   308: aload_2
      //   309: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   312: pop
      //   313: aload_1
      //   314: areturn
      //   315: aload_3
      //   316: astore_2
      //   317: aload_0
      //   318: getfield 22	c0/a$c:b	I
      //   321: newarray int
      //   323: astore_1
      //   324: iload 7
      //   326: istore 13
      //   328: aload_3
      //   329: astore_2
      //   330: iload 13
      //   332: aload_0
      //   333: getfield 22	c0/a$c:b	I
      //   336: if_icmpge +19 -> 355
      //   339: aload_3
      //   340: astore_2
      //   341: aload_1
      //   342: iload 13
      //   344: aload_3
      //   345: invokevirtual 200	c0/a$b:readInt	()I
      //   348: iastore
      //   349: iinc 13 1
      //   352: goto -24 -> 328
      //   355: aload_3
      //   356: invokevirtual 183	java/io/InputStream:close	()V
      //   359: goto +13 -> 372
      //   362: astore_2
      //   363: ldc 185
      //   365: ldc 187
      //   367: aload_2
      //   368: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   371: pop
      //   372: aload_1
      //   373: areturn
      //   374: aload_3
      //   375: astore_2
      //   376: aload_0
      //   377: getfield 22	c0/a$c:b	I
      //   380: newarray int
      //   382: astore_1
      //   383: iload 8
      //   385: istore 13
      //   387: aload_3
      //   388: astore_2
      //   389: iload 13
      //   391: aload_0
      //   392: getfield 22	c0/a$c:b	I
      //   395: if_icmpge +19 -> 414
      //   398: aload_3
      //   399: astore_2
      //   400: aload_1
      //   401: iload 13
      //   403: aload_3
      //   404: invokevirtual 207	c0/a$b:readShort	()S
      //   407: iastore
      //   408: iinc 13 1
      //   411: goto -24 -> 387
      //   414: aload_3
      //   415: invokevirtual 183	java/io/InputStream:close	()V
      //   418: goto +13 -> 431
      //   421: astore_2
      //   422: ldc 185
      //   424: ldc 187
      //   426: aload_2
      //   427: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   430: pop
      //   431: aload_1
      //   432: areturn
      //   433: aload_3
      //   434: astore_2
      //   435: aload_0
      //   436: getfield 22	c0/a$c:b	I
      //   439: anewarray 88	c0/a$e
      //   442: astore_1
      //   443: iload 9
      //   445: istore 13
      //   447: aload_3
      //   448: astore_2
      //   449: iload 13
      //   451: aload_0
      //   452: getfield 22	c0/a$c:b	I
      //   455: if_icmpge +30 -> 485
      //   458: aload_3
      //   459: astore_2
      //   460: aload_1
      //   461: iload 13
      //   463: new 88	c0/a$e
      //   466: dup
      //   467: aload_3
      //   468: invokevirtual 211	c0/a$b:m	()J
      //   471: aload_3
      //   472: invokevirtual 211	c0/a$b:m	()J
      //   475: invokespecial 203	c0/a$e:<init>	(JJ)V
      //   478: aastore
      //   479: iinc 13 1
      //   482: goto -35 -> 447
      //   485: aload_3
      //   486: invokevirtual 183	java/io/InputStream:close	()V
      //   489: goto +13 -> 502
      //   492: astore_2
      //   493: ldc 185
      //   495: ldc 187
      //   497: aload_2
      //   498: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   501: pop
      //   502: aload_1
      //   503: areturn
      //   504: aload_3
      //   505: astore_2
      //   506: aload_0
      //   507: getfield 22	c0/a$c:b	I
      //   510: newarray long
      //   512: astore_1
      //   513: iload 10
      //   515: istore 13
      //   517: aload_3
      //   518: astore_2
      //   519: iload 13
      //   521: aload_0
      //   522: getfield 22	c0/a$c:b	I
      //   525: if_icmpge +19 -> 544
      //   528: aload_3
      //   529: astore_2
      //   530: aload_1
      //   531: iload 13
      //   533: aload_3
      //   534: invokevirtual 211	c0/a$b:m	()J
      //   537: lastore
      //   538: iinc 13 1
      //   541: goto -24 -> 517
      //   544: aload_3
      //   545: invokevirtual 183	java/io/InputStream:close	()V
      //   548: goto +13 -> 561
      //   551: astore_2
      //   552: ldc 185
      //   554: ldc 187
      //   556: aload_2
      //   557: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   560: pop
      //   561: aload_1
      //   562: areturn
      //   563: aload_3
      //   564: astore_2
      //   565: aload_0
      //   566: getfield 22	c0/a$c:b	I
      //   569: newarray int
      //   571: astore_1
      //   572: iload 11
      //   574: istore 13
      //   576: aload_3
      //   577: astore_2
      //   578: iload 13
      //   580: aload_0
      //   581: getfield 22	c0/a$c:b	I
      //   584: if_icmpge +19 -> 603
      //   587: aload_3
      //   588: astore_2
      //   589: aload_1
      //   590: iload 13
      //   592: aload_3
      //   593: invokevirtual 214	c0/a$b:readUnsignedShort	()I
      //   596: iastore
      //   597: iinc 13 1
      //   600: goto -24 -> 576
      //   603: aload_3
      //   604: invokevirtual 183	java/io/InputStream:close	()V
      //   607: goto +13 -> 620
      //   610: astore_2
      //   611: ldc 185
      //   613: ldc 187
      //   615: aload_2
      //   616: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   619: pop
      //   620: aload_1
      //   621: areturn
      //   622: iload 12
      //   624: istore 13
      //   626: aload_3
      //   627: astore_2
      //   628: aload_0
      //   629: getfield 22	c0/a$c:b	I
      //   632: getstatic 217	c0/a:Z	[B
      //   635: arraylength
      //   636: if_icmplt +68 -> 704
      //   639: iconst_0
      //   640: istore 13
      //   642: aload_3
      //   643: astore_2
      //   644: getstatic 217	c0/a:Z	[B
      //   647: astore_1
      //   648: iload 14
      //   650: istore 5
      //   652: aload_3
      //   653: astore_2
      //   654: iload 13
      //   656: aload_1
      //   657: arraylength
      //   658: if_icmpge +31 -> 689
      //   661: aload_3
      //   662: astore_2
      //   663: aload_0
      //   664: getfield 26	c0/a$c:d	[B
      //   667: iload 13
      //   669: baload
      //   670: aload_1
      //   671: iload 13
      //   673: baload
      //   674: if_icmpeq +9 -> 683
      //   677: iconst_0
      //   678: istore 5
      //   680: goto +9 -> 689
      //   683: iinc 13 1
      //   686: goto -44 -> 642
      //   689: iload 12
      //   691: istore 13
      //   693: iload 5
      //   695: ifeq +9 -> 704
      //   698: aload_3
      //   699: astore_2
      //   700: aload_1
      //   701: arraylength
      //   702: istore 13
      //   704: aload_3
      //   705: astore_2
      //   706: new 35	java/lang/StringBuilder
      //   709: astore_1
      //   710: aload_3
      //   711: astore_2
      //   712: aload_1
      //   713: invokespecial 36	java/lang/StringBuilder:<init>	()V
      //   716: aload_3
      //   717: astore_2
      //   718: iload 13
      //   720: aload_0
      //   721: getfield 22	c0/a$c:b	I
      //   724: if_icmpge +57 -> 781
      //   727: aload_3
      //   728: astore_2
      //   729: aload_0
      //   730: getfield 26	c0/a$c:d	[B
      //   733: iload 13
      //   735: baload
      //   736: istore 5
      //   738: iload 5
      //   740: ifne +6 -> 746
      //   743: goto +38 -> 781
      //   746: iload 5
      //   748: bipush 32
      //   750: if_icmplt +16 -> 766
      //   753: aload_3
      //   754: astore_2
      //   755: aload_1
      //   756: iload 5
      //   758: i2c
      //   759: invokevirtual 43	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
      //   762: pop
      //   763: goto +12 -> 775
      //   766: aload_3
      //   767: astore_2
      //   768: aload_1
      //   769: bipush 63
      //   771: invokevirtual 43	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
      //   774: pop
      //   775: iinc 13 1
      //   778: goto -62 -> 716
      //   781: aload_3
      //   782: astore_2
      //   783: aload_1
      //   784: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   787: astore_1
      //   788: aload_3
      //   789: invokevirtual 183	java/io/InputStream:close	()V
      //   792: goto +13 -> 805
      //   795: astore_2
      //   796: ldc 185
      //   798: ldc 187
      //   800: aload_2
      //   801: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   804: pop
      //   805: aload_1
      //   806: areturn
      //   807: aload_3
      //   808: astore_2
      //   809: aload_0
      //   810: getfield 26	c0/a$c:d	[B
      //   813: astore_1
      //   814: aload_3
      //   815: astore_2
      //   816: aload_1
      //   817: arraylength
      //   818: iconst_1
      //   819: if_icmpne +60 -> 879
      //   822: aload_1
      //   823: iconst_0
      //   824: baload
      //   825: istore 13
      //   827: iload 13
      //   829: iflt +50 -> 879
      //   832: iload 13
      //   834: iconst_1
      //   835: if_icmpgt +44 -> 879
      //   838: aload_3
      //   839: astore_2
      //   840: new 53	java/lang/String
      //   843: dup
      //   844: iconst_1
      //   845: newarray char
      //   847: dup
      //   848: iconst_0
      //   849: iload 13
      //   851: bipush 48
      //   853: iadd
      //   854: i2c
      //   855: castore
      //   856: invokespecial 220	java/lang/String:<init>	([C)V
      //   859: astore_1
      //   860: aload_3
      //   861: invokevirtual 183	java/io/InputStream:close	()V
      //   864: goto +13 -> 877
      //   867: astore_2
      //   868: ldc 185
      //   870: ldc 187
      //   872: aload_2
      //   873: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   876: pop
      //   877: aload_1
      //   878: areturn
      //   879: aload_3
      //   880: astore_2
      //   881: new 53	java/lang/String
      //   884: dup
      //   885: aload_1
      //   886: getstatic 51	c0/a:s0	Ljava/nio/charset/Charset;
      //   889: invokespecial 223	java/lang/String:<init>	([BLjava/nio/charset/Charset;)V
      //   892: astore_1
      //   893: aload_3
      //   894: invokevirtual 183	java/io/InputStream:close	()V
      //   897: goto +13 -> 910
      //   900: astore_2
      //   901: ldc 185
      //   903: ldc 187
      //   905: aload_2
      //   906: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   909: pop
      //   910: aload_1
      //   911: areturn
      //   912: aload_3
      //   913: invokevirtual 183	java/io/InputStream:close	()V
      //   916: goto +13 -> 929
      //   919: astore_1
      //   920: ldc 185
      //   922: ldc 187
      //   924: aload_1
      //   925: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   928: pop
      //   929: aconst_null
      //   930: areturn
      //   931: astore_2
      //   932: aload_3
      //   933: astore_1
      //   934: aload_2
      //   935: astore_3
      //   936: goto +10 -> 946
      //   939: astore_1
      //   940: goto +41 -> 981
      //   943: astore_3
      //   944: aconst_null
      //   945: astore_1
      //   946: aload_1
      //   947: astore_2
      //   948: ldc 185
      //   950: ldc 225
      //   952: aload_3
      //   953: invokestatic 228	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   956: pop
      //   957: aload_1
      //   958: ifnull +20 -> 978
      //   961: aload_1
      //   962: invokevirtual 183	java/io/InputStream:close	()V
      //   965: goto +13 -> 978
      //   968: astore_1
      //   969: ldc 185
      //   971: ldc 187
      //   973: aload_1
      //   974: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   977: pop
      //   978: aconst_null
      //   979: areturn
      //   980: astore_1
      //   981: aload_2
      //   982: ifnull +20 -> 1002
      //   985: aload_2
      //   986: invokevirtual 183	java/io/InputStream:close	()V
      //   989: goto +13 -> 1002
      //   992: astore_2
      //   993: ldc 185
      //   995: ldc 187
      //   997: aload_2
      //   998: invokestatic 192	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   1001: pop
      //   1002: aload_1
      //   1003: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	1004	0	this	c
      //   0	1004	1	paramByteOrder	ByteOrder
      //   1	148	2	localObject1	Object
      //   170	6	2	localIOException1	IOException
      //   183	25	2	localObject2	Object
      //   230	6	2	localIOException2	IOException
      //   243	26	2	localObject3	Object
      //   303	6	2	localIOException3	IOException
      //   316	25	2	localObject4	Object
      //   362	6	2	localIOException4	IOException
      //   375	25	2	localObject5	Object
      //   421	6	2	localIOException5	IOException
      //   434	26	2	localObject6	Object
      //   492	6	2	localIOException6	IOException
      //   505	25	2	localObject7	Object
      //   551	6	2	localIOException7	IOException
      //   564	25	2	localObject8	Object
      //   610	6	2	localIOException8	IOException
      //   627	156	2	localObject9	Object
      //   795	6	2	localIOException9	IOException
      //   808	32	2	localObject10	Object
      //   867	6	2	localIOException10	IOException
      //   880	1	2	localObject11	Object
      //   900	6	2	localIOException11	IOException
      //   931	4	2	localIOException12	IOException
      //   947	39	2	localByteOrder	ByteOrder
      //   992	6	2	localIOException13	IOException
      //   5	931	3	localObject12	Object
      //   943	10	3	localIOException14	IOException
      //   27	33	4	i	int
      //   30	727	5	j	int
      //   33	220	6	k	int
      //   36	289	7	m	int
      //   39	345	8	n	int
      //   42	402	9	i1	int
      //   45	469	10	i2	int
      //   48	525	11	i3	int
      //   51	639	12	i4	int
      //   54	800	13	i5	int
      //   57	592	14	i6	int
      // Exception table:
      //   from	to	target	type
      //   163	167	170	java/io/IOException
      //   223	227	230	java/io/IOException
      //   296	300	303	java/io/IOException
      //   355	359	362	java/io/IOException
      //   414	418	421	java/io/IOException
      //   485	489	492	java/io/IOException
      //   544	548	551	java/io/IOException
      //   603	607	610	java/io/IOException
      //   788	792	795	java/io/IOException
      //   860	864	867	java/io/IOException
      //   893	897	900	java/io/IOException
      //   912	916	919	java/io/IOException
      //   16	21	931	java/io/IOException
      //   23	29	931	java/io/IOException
      //   129	136	931	java/io/IOException
      //   138	147	931	java/io/IOException
      //   149	157	931	java/io/IOException
      //   184	191	931	java/io/IOException
      //   197	206	931	java/io/IOException
      //   208	217	931	java/io/IOException
      //   244	252	931	java/io/IOException
      //   258	267	931	java/io/IOException
      //   269	290	931	java/io/IOException
      //   317	324	931	java/io/IOException
      //   330	339	931	java/io/IOException
      //   341	349	931	java/io/IOException
      //   376	383	931	java/io/IOException
      //   389	398	931	java/io/IOException
      //   400	408	931	java/io/IOException
      //   435	443	931	java/io/IOException
      //   449	458	931	java/io/IOException
      //   460	479	931	java/io/IOException
      //   506	513	931	java/io/IOException
      //   519	528	931	java/io/IOException
      //   530	538	931	java/io/IOException
      //   565	572	931	java/io/IOException
      //   578	587	931	java/io/IOException
      //   589	597	931	java/io/IOException
      //   628	639	931	java/io/IOException
      //   644	648	931	java/io/IOException
      //   654	661	931	java/io/IOException
      //   663	677	931	java/io/IOException
      //   700	704	931	java/io/IOException
      //   706	710	931	java/io/IOException
      //   712	716	931	java/io/IOException
      //   718	727	931	java/io/IOException
      //   729	738	931	java/io/IOException
      //   755	763	931	java/io/IOException
      //   768	775	931	java/io/IOException
      //   783	788	931	java/io/IOException
      //   809	814	931	java/io/IOException
      //   816	822	931	java/io/IOException
      //   840	860	931	java/io/IOException
      //   881	893	931	java/io/IOException
      //   2	14	939	finally
      //   2	14	943	java/io/IOException
      //   961	965	968	java/io/IOException
      //   16	21	980	finally
      //   23	29	980	finally
      //   129	136	980	finally
      //   138	147	980	finally
      //   149	157	980	finally
      //   184	191	980	finally
      //   197	206	980	finally
      //   208	217	980	finally
      //   244	252	980	finally
      //   258	267	980	finally
      //   269	290	980	finally
      //   317	324	980	finally
      //   330	339	980	finally
      //   341	349	980	finally
      //   376	383	980	finally
      //   389	398	980	finally
      //   400	408	980	finally
      //   435	443	980	finally
      //   449	458	980	finally
      //   460	479	980	finally
      //   506	513	980	finally
      //   519	528	980	finally
      //   530	538	980	finally
      //   565	572	980	finally
      //   578	587	980	finally
      //   589	597	980	finally
      //   628	639	980	finally
      //   644	648	980	finally
      //   654	661	980	finally
      //   663	677	980	finally
      //   700	704	980	finally
      //   706	710	980	finally
      //   712	716	980	finally
      //   718	727	980	finally
      //   729	738	980	finally
      //   755	763	980	finally
      //   768	775	980	finally
      //   783	788	980	finally
      //   809	814	980	finally
      //   816	822	980	finally
      //   840	860	980	finally
      //   881	893	980	finally
      //   948	957	980	finally
      //   985	989	992	java/io/IOException
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("(");
      localStringBuilder.append(a.X[this.a]);
      localStringBuilder.append(", data length:");
      localStringBuilder.append(this.d.length);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
    }
  }
  
  static class d
  {
    public final int a;
    public final String b;
    public final int c;
    public final int d;
    
    d(String paramString, int paramInt1, int paramInt2)
    {
      this.b = paramString;
      this.a = paramInt1;
      this.c = paramInt2;
      this.d = -1;
    }
    
    d(String paramString, int paramInt1, int paramInt2, int paramInt3)
    {
      this.b = paramString;
      this.a = paramInt1;
      this.c = paramInt2;
      this.d = paramInt3;
    }
    
    boolean a(int paramInt)
    {
      int i = this.c;
      if ((i != 7) && (paramInt != 7) && (i != paramInt))
      {
        int j = this.d;
        if (j != paramInt)
        {
          if (((i == 4) || (j == 4)) && (paramInt == 3)) {
            return true;
          }
          if (((i == 9) || (j == 9)) && (paramInt == 8)) {
            return true;
          }
          return ((i == 12) || (j == 12)) && (paramInt == 11);
        }
      }
      return true;
    }
  }
  
  private static class e
  {
    public final long a;
    public final long b;
    
    e(long paramLong1, long paramLong2)
    {
      if (paramLong2 == 0L)
      {
        this.a = 0L;
        this.b = 1L;
        return;
      }
      this.a = paramLong1;
      this.b = paramLong2;
    }
    
    public double a()
    {
      return this.a / this.b;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a);
      localStringBuilder.append("/");
      localStringBuilder.append(this.b);
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c0.a
 * JD-Core Version:    0.7.0.1
 */