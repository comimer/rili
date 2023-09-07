.class public final Lat/bitfire/ical4android/Task;
.super Lat/bitfire/ical4android/ICalendar;
.source "Task.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/ical4android/Task$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u0089\u00012\u00020\u0001:\u0002\u0089\u0001B\t\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0088\u0001J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u000f\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR$\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R$\u0010\u001c\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0014\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R$\u0010 \u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010&\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0014\u001a\u0004\u0008\'\u0010\u0016\"\u0004\u0008(\u0010\u0018R$\u0010*\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00101\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\"\u00107\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R$\u0010>\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR$\u0010E\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR$\u0010L\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR$\u0010S\u001a\u0004\u0018\u00010R8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR$\u0010Z\u001a\u0004\u0018\u00010Y8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R$\u0010a\u001a\u0004\u0018\u00010`8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR$\u0010g\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008g\u0010!\u001a\u0004\u0008h\u0010#\"\u0004\u0008i\u0010%R$\u0010k\u001a\u0004\u0018\u00010j8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008k\u0010l\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR\u001d\u0010s\u001a\u0008\u0012\u0004\u0012\u00020r0q8\u0006\u00a2\u0006\u000c\n\u0004\u0008s\u0010t\u001a\u0004\u0008u\u0010vR\u001d\u0010x\u001a\u0008\u0012\u0004\u0012\u00020w0q8\u0006\u00a2\u0006\u000c\n\u0004\u0008x\u0010t\u001a\u0004\u0008y\u0010vR\u001d\u0010z\u001a\u0008\u0012\u0004\u0012\u00020\u00120q8\u0006\u00a2\u0006\u000c\n\u0004\u0008z\u0010t\u001a\u0004\u0008{\u0010vR)\u0010}\u001a\u0008\u0012\u0004\u0012\u00020|0q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0013\n\u0004\u0008}\u0010t\u001a\u0004\u0008~\u0010v\"\u0005\u0008\u007f\u0010\u0080\u0001R!\u0010\u0082\u0001\u001a\t\u0012\u0005\u0012\u00030\u0081\u00010q8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0082\u0001\u0010t\u001a\u0005\u0008\u0083\u0001\u0010vR!\u0010\u0085\u0001\u001a\t\u0012\u0005\u0012\u00030\u0084\u00010q8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0085\u0001\u0010t\u001a\u0005\u0008\u0086\u0001\u0010v\u00a8\u0006\u008a\u0001"
    }
    d2 = {
        "Lat/bitfire/ical4android/Task;",
        "Lat/bitfire/ical4android/ICalendar;",
        "Ljava/io/OutputStream;",
        "os",
        "Lkotlin/u;",
        "write",
        "",
        "isAllDay",
        "",
        "createdAt",
        "Ljava/lang/Long;",
        "getCreatedAt",
        "()Ljava/lang/Long;",
        "setCreatedAt",
        "(Ljava/lang/Long;)V",
        "lastModified",
        "getLastModified",
        "setLastModified",
        "",
        "summary",
        "Ljava/lang/String;",
        "getSummary",
        "()Ljava/lang/String;",
        "setSummary",
        "(Ljava/lang/String;)V",
        "location",
        "getLocation",
        "setLocation",
        "description",
        "getDescription",
        "setDescription",
        "",
        "color",
        "Ljava/lang/Integer;",
        "getColor",
        "()Ljava/lang/Integer;",
        "setColor",
        "(Ljava/lang/Integer;)V",
        "url",
        "getUrl",
        "setUrl",
        "Lnet/fortuna/ical4j/model/property/Organizer;",
        "organizer",
        "Lnet/fortuna/ical4j/model/property/Organizer;",
        "getOrganizer",
        "()Lnet/fortuna/ical4j/model/property/Organizer;",
        "setOrganizer",
        "(Lnet/fortuna/ical4j/model/property/Organizer;)V",
        "Lnet/fortuna/ical4j/model/property/Geo;",
        "geoPosition",
        "Lnet/fortuna/ical4j/model/property/Geo;",
        "getGeoPosition",
        "()Lnet/fortuna/ical4j/model/property/Geo;",
        "setGeoPosition",
        "(Lnet/fortuna/ical4j/model/property/Geo;)V",
        "priority",
        "I",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
        "Lnet/fortuna/ical4j/model/property/Clazz;",
        "classification",
        "Lnet/fortuna/ical4j/model/property/Clazz;",
        "getClassification",
        "()Lnet/fortuna/ical4j/model/property/Clazz;",
        "setClassification",
        "(Lnet/fortuna/ical4j/model/property/Clazz;)V",
        "Lnet/fortuna/ical4j/model/property/Status;",
        "status",
        "Lnet/fortuna/ical4j/model/property/Status;",
        "getStatus",
        "()Lnet/fortuna/ical4j/model/property/Status;",
        "setStatus",
        "(Lnet/fortuna/ical4j/model/property/Status;)V",
        "Lnet/fortuna/ical4j/model/property/DtStart;",
        "dtStart",
        "Lnet/fortuna/ical4j/model/property/DtStart;",
        "getDtStart",
        "()Lnet/fortuna/ical4j/model/property/DtStart;",
        "setDtStart",
        "(Lnet/fortuna/ical4j/model/property/DtStart;)V",
        "Lnet/fortuna/ical4j/model/property/Due;",
        "due",
        "Lnet/fortuna/ical4j/model/property/Due;",
        "getDue",
        "()Lnet/fortuna/ical4j/model/property/Due;",
        "setDue",
        "(Lnet/fortuna/ical4j/model/property/Due;)V",
        "Lnet/fortuna/ical4j/model/property/Duration;",
        "duration",
        "Lnet/fortuna/ical4j/model/property/Duration;",
        "getDuration",
        "()Lnet/fortuna/ical4j/model/property/Duration;",
        "setDuration",
        "(Lnet/fortuna/ical4j/model/property/Duration;)V",
        "Lnet/fortuna/ical4j/model/property/Completed;",
        "completedAt",
        "Lnet/fortuna/ical4j/model/property/Completed;",
        "getCompletedAt",
        "()Lnet/fortuna/ical4j/model/property/Completed;",
        "setCompletedAt",
        "(Lnet/fortuna/ical4j/model/property/Completed;)V",
        "percentComplete",
        "getPercentComplete",
        "setPercentComplete",
        "Lnet/fortuna/ical4j/model/property/RRule;",
        "rRule",
        "Lnet/fortuna/ical4j/model/property/RRule;",
        "getRRule",
        "()Lnet/fortuna/ical4j/model/property/RRule;",
        "setRRule",
        "(Lnet/fortuna/ical4j/model/property/RRule;)V",
        "Ljava/util/LinkedList;",
        "Lnet/fortuna/ical4j/model/property/RDate;",
        "rDates",
        "Ljava/util/LinkedList;",
        "getRDates",
        "()Ljava/util/LinkedList;",
        "Lnet/fortuna/ical4j/model/property/ExDate;",
        "exDates",
        "getExDates",
        "categories",
        "getCategories",
        "Lnet/fortuna/ical4j/model/property/RelatedTo;",
        "relatedTo",
        "getRelatedTo",
        "setRelatedTo",
        "(Ljava/util/LinkedList;)V",
        "Lnet/fortuna/ical4j/model/Property;",
        "unknownProperties",
        "getUnknownProperties",
        "Lnet/fortuna/ical4j/model/component/VAlarm;",
        "alarms",
        "getAlarms",
        "<init>",
        "()V",
        "Companion",
        "ical4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lat/bitfire/ical4android/Task$Companion;


# instance fields
.field private final alarms:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/component/VAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private final categories:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classification:Lnet/fortuna/ical4j/model/property/Clazz;

.field private color:Ljava/lang/Integer;

.field private completedAt:Lnet/fortuna/ical4j/model/property/Completed;

.field private createdAt:Ljava/lang/Long;

.field private description:Ljava/lang/String;

.field private dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

.field private due:Lnet/fortuna/ical4j/model/property/Due;

.field private duration:Lnet/fortuna/ical4j/model/property/Duration;

.field private final exDates:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/property/ExDate;",
            ">;"
        }
    .end annotation
.end field

.field private geoPosition:Lnet/fortuna/ical4j/model/property/Geo;

.field private lastModified:Ljava/lang/Long;

.field private location:Ljava/lang/String;

.field private organizer:Lnet/fortuna/ical4j/model/property/Organizer;

.field private percentComplete:Ljava/lang/Integer;

.field private priority:I

.field private final rDates:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/property/RDate;",
            ">;"
        }
    .end annotation
.end field

.field private rRule:Lnet/fortuna/ical4j/model/property/RRule;

.field private relatedTo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/property/RelatedTo;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lnet/fortuna/ical4j/model/property/Status;

.field private summary:Ljava/lang/String;

.field private final unknownProperties:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lat/bitfire/ical4android/Task$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/bitfire/ical4android/Task$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lat/bitfire/ical4android/Task;->Companion:Lat/bitfire/ical4android/Task$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lat/bitfire/ical4android/ICalendar;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

    .line 5
    .line 6
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Priority;->getLevel()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lat/bitfire/ical4android/Task;->priority:I

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lat/bitfire/ical4android/Task;->rDates:Ljava/util/LinkedList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lat/bitfire/ical4android/Task;->exDates:Ljava/util/LinkedList;

    .line 25
    .line 26
    new-instance v0, Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lat/bitfire/ical4android/Task;->categories:Ljava/util/LinkedList;

    .line 32
    .line 33
    new-instance v0, Ljava/util/LinkedList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lat/bitfire/ical4android/Task;->relatedTo:Ljava/util/LinkedList;

    .line 39
    .line 40
    new-instance v0, Ljava/util/LinkedList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lat/bitfire/ical4android/Task;->unknownProperties:Ljava/util/LinkedList;

    .line 46
    .line 47
    new-instance v0, Ljava/util/LinkedList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lat/bitfire/ical4android/Task;->alarms:Ljava/util/LinkedList;

    .line 53
    .line 54
    return-void
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method


# virtual methods
.method public final getAlarms()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/component/VAlarm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->alarms:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getCategories()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->categories:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getClassification()Lnet/fortuna/ical4j/model/property/Clazz;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->classification:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getColor()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->color:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getCompletedAt()Lnet/fortuna/ical4j/model/property/Completed;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->completedAt:Lnet/fortuna/ical4j/model/property/Completed;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getCreatedAt()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->createdAt:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getDtStart()Lnet/fortuna/ical4j/model/property/DtStart;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getDue()Lnet/fortuna/ical4j/model/property/Due;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->due:Lnet/fortuna/ical4j/model/property/Due;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getDuration()Lnet/fortuna/ical4j/model/property/Duration;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->duration:Lnet/fortuna/ical4j/model/property/Duration;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getExDates()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/property/ExDate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->exDates:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getGeoPosition()Lnet/fortuna/ical4j/model/property/Geo;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->geoPosition:Lnet/fortuna/ical4j/model/property/Geo;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getLastModified()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->lastModified:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->organizer:Lnet/fortuna/ical4j/model/property/Organizer;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getPercentComplete()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->percentComplete:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lat/bitfire/ical4android/Task;->priority:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getRDates()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/property/RDate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->rDates:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getRRule()Lnet/fortuna/ical4j/model/property/RRule;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->rRule:Lnet/fortuna/ical4j/model/property/RRule;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getRelatedTo()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/property/RelatedTo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->relatedTo:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getStatus()Lnet/fortuna/ical4j/model/property/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->status:Lnet/fortuna/ical4j/model/property/Status;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getSummary()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getUnknownProperties()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->unknownProperties:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final isAllDay()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Task;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

    .line 2
    .line 3
    iget-object v1, p0, Lat/bitfire/ical4android/Task;->due:Lnet/fortuna/ical4j/model/property/Due;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public final setClassification(Lnet/fortuna/ical4j/model/property/Clazz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->classification:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setColor(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->color:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setCompletedAt(Lnet/fortuna/ical4j/model/property/Completed;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->completedAt:Lnet/fortuna/ical4j/model/property/Completed;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setCreatedAt(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->createdAt:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setDtStart(Lnet/fortuna/ical4j/model/property/DtStart;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setDue(Lnet/fortuna/ical4j/model/property/Due;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->due:Lnet/fortuna/ical4j/model/property/Due;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setDuration(Lnet/fortuna/ical4j/model/property/Duration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->duration:Lnet/fortuna/ical4j/model/property/Duration;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setGeoPosition(Lnet/fortuna/ical4j/model/property/Geo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->geoPosition:Lnet/fortuna/ical4j/model/property/Geo;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setLastModified(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->lastModified:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setOrganizer(Lnet/fortuna/ical4j/model/property/Organizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->organizer:Lnet/fortuna/ical4j/model/property/Organizer;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setPercentComplete(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->percentComplete:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lat/bitfire/ical4android/Task;->priority:I

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setRRule(Lnet/fortuna/ical4j/model/property/RRule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->rRule:Lnet/fortuna/ical4j/model/property/RRule;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setRelatedTo(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/property/RelatedTo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->relatedTo:Ljava/util/LinkedList;

    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setStatus(Lnet/fortuna/ical4j/model/property/Status;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->status:Lnet/fortuna/ical4j/model/property/Status;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setSummary(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Task;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final write(Ljava/io/OutputStream;)V
    .locals 12

    .line 1
    const-string v0, "os"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 7
    .line 8
    invoke-virtual {v0}, Lat/bitfire/ical4android/Ical4Android;->checkThreadContextClassLoader()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/Calendar;

    .line 12
    .line 13
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/Calendar;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "ical.properties"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v3, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    .line 26
    .line 27
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v2, Lat/bitfire/ical4android/ICalendar;->Companion:Lat/bitfire/ical4android/ICalendar$Companion;

    .line 38
    .line 39
    invoke-virtual {v2}, Lat/bitfire/ical4android/ICalendar$Companion;->getProdId()Lnet/fortuna/ical4j/model/property/ProdId;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Lnet/fortuna/ical4j/model/component/VToDo;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "ical.components"

    .line 57
    .line 58
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p0}, Lat/bitfire/ical4android/ICalendar;->getUid()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const-string v6, "props"

    .line 73
    .line 74
    if-eqz v5, :cond_0

    .line 75
    .line 76
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v5, Lnet/fortuna/ical4j/model/property/Uid;

    .line 80
    .line 81
    invoke-virtual {p0}, Lat/bitfire/ical4android/ICalendar;->getUid()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-direct {v5, v7}, Lnet/fortuna/ical4j/model/property/Uid;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-virtual {p0}, Lat/bitfire/ical4android/ICalendar;->getSequence()Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_1

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_1

    .line 102
    .line 103
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v7, Lnet/fortuna/ical4j/model/property/Sequence;

    .line 107
    .line 108
    invoke-direct {v7, v5}, Lnet/fortuna/ical4j/model/property/Sequence;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_1
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->createdAt:Ljava/lang/Long;

    .line 115
    .line 116
    if-eqz v5, :cond_2

    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 119
    .line 120
    .line 121
    move-result-wide v7

    .line 122
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v5, Lnet/fortuna/ical4j/model/property/Created;

    .line 126
    .line 127
    new-instance v9, Lnet/fortuna/ical4j/model/DateTime;

    .line 128
    .line 129
    invoke-direct {v9, v7, v8}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 130
    .line 131
    .line 132
    invoke-direct {v5, v9}, Lnet/fortuna/ical4j/model/property/Created;-><init>(Lnet/fortuna/ical4j/model/DateTime;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :cond_2
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->lastModified:Ljava/lang/Long;

    .line 139
    .line 140
    if-eqz v5, :cond_3

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 143
    .line 144
    .line 145
    move-result-wide v7

    .line 146
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v5, Lnet/fortuna/ical4j/model/property/LastModified;

    .line 150
    .line 151
    new-instance v9, Lnet/fortuna/ical4j/model/DateTime;

    .line 152
    .line 153
    invoke-direct {v9, v7, v8}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v5, v9}, Lnet/fortuna/ical4j/model/property/LastModified;-><init>(Lnet/fortuna/ical4j/model/DateTime;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    :cond_3
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->summary:Ljava/lang/String;

    .line 163
    .line 164
    if-eqz v5, :cond_4

    .line 165
    .line 166
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v7, Lnet/fortuna/ical4j/model/property/Summary;

    .line 170
    .line 171
    invoke-direct {v7, v5}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :cond_4
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->location:Ljava/lang/String;

    .line 178
    .line 179
    if-eqz v5, :cond_5

    .line 180
    .line 181
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v7, Lnet/fortuna/ical4j/model/property/Location;

    .line 185
    .line 186
    invoke-direct {v7, v5}, Lnet/fortuna/ical4j/model/property/Location;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_5
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->geoPosition:Lnet/fortuna/ical4j/model/property/Geo;

    .line 193
    .line 194
    if-eqz v5, :cond_6

    .line 195
    .line 196
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    :cond_6
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->description:Ljava/lang/String;

    .line 203
    .line 204
    if-eqz v5, :cond_7

    .line 205
    .line 206
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v7, Lnet/fortuna/ical4j/model/property/Description;

    .line 210
    .line 211
    invoke-direct {v7, v5}, Lnet/fortuna/ical4j/model/property/Description;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    :cond_7
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->color:Ljava/lang/Integer;

    .line 218
    .line 219
    const/4 v7, 0x0

    .line 220
    if-eqz v5, :cond_8

    .line 221
    .line 222
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance v8, Lnet/fortuna/ical4j/model/property/Color;

    .line 230
    .line 231
    sget-object v9, Lat/bitfire/ical4android/Css3Color;->Companion:Lat/bitfire/ical4android/Css3Color$Companion;

    .line 232
    .line 233
    invoke-virtual {v9, v5}, Lat/bitfire/ical4android/Css3Color$Companion;->nearestMatch(I)Lat/bitfire/ical4android/Css3Color;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-direct {v8, v7, v5}, Lnet/fortuna/ical4j/model/property/Color;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    :cond_8
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->url:Ljava/lang/String;

    .line 248
    .line 249
    if-eqz v5, :cond_9

    .line 250
    .line 251
    :try_start_0
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    new-instance v8, Lnet/fortuna/ical4j/model/property/Url;

    .line 255
    .line 256
    new-instance v9, Ljava/net/URI;

    .line 257
    .line 258
    invoke-direct {v9, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-direct {v8, v9}, Lnet/fortuna/ical4j/model/property/Url;-><init>(Ljava/net/URI;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .line 266
    .line 267
    goto :goto_0

    .line 268
    :catch_0
    move-exception v5

    .line 269
    sget-object v8, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 270
    .line 271
    invoke-virtual {v8}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 276
    .line 277
    new-instance v10, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v11, "Ignoring invalid task URL: "

    .line 283
    .line 284
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget-object v11, p0, Lat/bitfire/ical4android/Task;->url:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    invoke-virtual {v8, v9, v10, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .line 298
    .line 299
    :cond_9
    :goto_0
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->organizer:Lnet/fortuna/ical4j/model/property/Organizer;

    .line 300
    .line 301
    if-eqz v5, :cond_a

    .line 302
    .line 303
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    :cond_a
    iget v5, p0, Lat/bitfire/ical4android/Task;->priority:I

    .line 310
    .line 311
    sget-object v8, Lnet/fortuna/ical4j/model/property/Priority;->UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

    .line 312
    .line 313
    invoke-virtual {v8}, Lnet/fortuna/ical4j/model/property/Priority;->getLevel()I

    .line 314
    .line 315
    .line 316
    move-result v8

    .line 317
    if-eq v5, v8, :cond_b

    .line 318
    .line 319
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    new-instance v5, Lnet/fortuna/ical4j/model/property/Priority;

    .line 323
    .line 324
    iget v8, p0, Lat/bitfire/ical4android/Task;->priority:I

    .line 325
    .line 326
    invoke-direct {v5, v8}, Lnet/fortuna/ical4j/model/property/Priority;-><init>(I)V

    .line 327
    .line 328
    .line 329
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    :cond_b
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->classification:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 333
    .line 334
    if-eqz v5, :cond_c

    .line 335
    .line 336
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    :cond_c
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->status:Lnet/fortuna/ical4j/model/property/Status;

    .line 343
    .line 344
    if-eqz v5, :cond_d

    .line 345
    .line 346
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    :cond_d
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->rRule:Lnet/fortuna/ical4j/model/property/RRule;

    .line 353
    .line 354
    if-eqz v5, :cond_e

    .line 355
    .line 356
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    :cond_e
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->rDates:Ljava/util/LinkedList;

    .line 363
    .line 364
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v8

    .line 372
    if-eqz v8, :cond_f

    .line 373
    .line 374
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    check-cast v8, Lnet/fortuna/ical4j/model/property/RDate;

    .line 379
    .line 380
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_f
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->exDates:Ljava/util/LinkedList;

    .line 388
    .line 389
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    if-eqz v8, :cond_10

    .line 398
    .line 399
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v8

    .line 403
    check-cast v8, Lnet/fortuna/ical4j/model/property/ExDate;

    .line 404
    .line 405
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    goto :goto_2

    .line 412
    :cond_10
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->categories:Ljava/util/LinkedList;

    .line 413
    .line 414
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    xor-int/2addr v5, v2

    .line 419
    const/4 v8, 0x0

    .line 420
    if-eqz v5, :cond_11

    .line 421
    .line 422
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    new-instance v5, Lnet/fortuna/ical4j/model/property/Categories;

    .line 426
    .line 427
    new-instance v9, Lnet/fortuna/ical4j/model/TextList;

    .line 428
    .line 429
    iget-object v10, p0, Lat/bitfire/ical4android/Task;->categories:Ljava/util/LinkedList;

    .line 430
    .line 431
    new-array v11, v8, [Ljava/lang/String;

    .line 432
    .line 433
    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    const-string v11, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 438
    .line 439
    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    check-cast v10, [Ljava/lang/String;

    .line 443
    .line 444
    invoke-direct {v9, v10}, Lnet/fortuna/ical4j/model/TextList;-><init>([Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-direct {v5, v9}, Lnet/fortuna/ical4j/model/property/Categories;-><init>(Lnet/fortuna/ical4j/model/TextList;)V

    .line 448
    .line 449
    .line 450
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    :cond_11
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->relatedTo:Ljava/util/LinkedList;

    .line 454
    .line 455
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 456
    .line 457
    .line 458
    iget-object v5, p0, Lat/bitfire/ical4android/Task;->unknownProperties:Ljava/util/LinkedList;

    .line 459
    .line 460
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 461
    .line 462
    .line 463
    new-instance v5, Ljava/util/HashSet;

    .line 464
    .line 465
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 466
    .line 467
    .line 468
    iget-object v9, p0, Lat/bitfire/ical4android/Task;->due:Lnet/fortuna/ical4j/model/property/Due;

    .line 469
    .line 470
    if-eqz v9, :cond_12

    .line 471
    .line 472
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    invoke-virtual {v9}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 479
    .line 480
    .line 481
    move-result-object v9

    .line 482
    if-eqz v9, :cond_12

    .line 483
    .line 484
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    :cond_12
    iget-object v9, p0, Lat/bitfire/ical4android/Task;->duration:Lnet/fortuna/ical4j/model/property/Duration;

    .line 488
    .line 489
    if-eqz v9, :cond_13

    .line 490
    .line 491
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3, v9}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 495
    .line 496
    .line 497
    :cond_13
    iget-object v9, p0, Lat/bitfire/ical4android/Task;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

    .line 498
    .line 499
    if-eqz v9, :cond_14

    .line 500
    .line 501
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    invoke-virtual {v9}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 508
    .line 509
    .line 510
    move-result-object v9

    .line 511
    if-eqz v9, :cond_14

    .line 512
    .line 513
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    :cond_14
    iget-object v9, p0, Lat/bitfire/ical4android/Task;->completedAt:Lnet/fortuna/ical4j/model/property/Completed;

    .line 517
    .line 518
    if-eqz v9, :cond_15

    .line 519
    .line 520
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    invoke-virtual {v9}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 527
    .line 528
    .line 529
    move-result-object v9

    .line 530
    if-eqz v9, :cond_15

    .line 531
    .line 532
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    :cond_15
    iget-object v9, p0, Lat/bitfire/ical4android/Task;->percentComplete:Ljava/lang/Integer;

    .line 536
    .line 537
    if-eqz v9, :cond_16

    .line 538
    .line 539
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 540
    .line 541
    .line 542
    move-result v9

    .line 543
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    new-instance v6, Lnet/fortuna/ical4j/model/property/PercentComplete;

    .line 547
    .line 548
    invoke-direct {v6, v9}, Lnet/fortuna/ical4j/model/property/PercentComplete;-><init>(I)V

    .line 549
    .line 550
    .line 551
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    :cond_16
    iget-object v3, p0, Lat/bitfire/ical4android/Task;->alarms:Ljava/util/LinkedList;

    .line 555
    .line 556
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    xor-int/2addr v3, v2

    .line 561
    if-eqz v3, :cond_17

    .line 562
    .line 563
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    iget-object v3, p0, Lat/bitfire/ical4android/Task;->alarms:Ljava/util/LinkedList;

    .line 568
    .line 569
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 570
    .line 571
    .line 572
    :cond_17
    const/4 v1, 0x3

    .line 573
    new-array v1, v1, [Lnet/fortuna/ical4j/model/Date;

    .line 574
    .line 575
    iget-object v3, p0, Lat/bitfire/ical4android/Task;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

    .line 576
    .line 577
    if-eqz v3, :cond_18

    .line 578
    .line 579
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    goto :goto_3

    .line 584
    :cond_18
    move-object v3, v7

    .line 585
    :goto_3
    aput-object v3, v1, v8

    .line 586
    .line 587
    iget-object v3, p0, Lat/bitfire/ical4android/Task;->due:Lnet/fortuna/ical4j/model/property/Due;

    .line 588
    .line 589
    if-eqz v3, :cond_19

    .line 590
    .line 591
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    goto :goto_4

    .line 596
    :cond_19
    move-object v3, v7

    .line 597
    :goto_4
    aput-object v3, v1, v2

    .line 598
    .line 599
    const/4 v2, 0x2

    .line 600
    iget-object v3, p0, Lat/bitfire/ical4android/Task;->completedAt:Lnet/fortuna/ical4j/model/property/Completed;

    .line 601
    .line 602
    if-eqz v3, :cond_1a

    .line 603
    .line 604
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 605
    .line 606
    .line 607
    move-result-object v7

    .line 608
    :cond_1a
    aput-object v7, v1, v2

    .line 609
    .line 610
    invoke-static {v1}, Lkotlin/collections/j;->v([Ljava/lang/Object;)Ljava/util/List;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    invoke-static {v1}, Lkotlin/collections/t;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    invoke-static {v1}, Lkotlin/collections/t;->a0(Ljava/util/List;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 623
    .line 624
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    if-eqz v3, :cond_1c

    .line 633
    .line 634
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    check-cast v3, Lnet/fortuna/ical4j/model/TimeZone;

    .line 639
    .line 640
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/TimeZone;->getVTimeZone()Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    if-eqz v1, :cond_1b

    .line 645
    .line 646
    sget-object v5, Lat/bitfire/ical4android/ICalendar;->Companion:Lat/bitfire/ical4android/ICalendar$Companion;

    .line 647
    .line 648
    const-string v6, "tz"

    .line 649
    .line 650
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v5, v3, v1}, Lat/bitfire/ical4android/ICalendar$Companion;->minifyVTimeZone(Lnet/fortuna/ical4j/model/component/VTimeZone;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    :cond_1b
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 658
    .line 659
    .line 660
    move-result-object v5

    .line 661
    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    goto :goto_5

    .line 668
    :cond_1c
    sget-object v1, Lat/bitfire/ical4android/ICalendar;->Companion:Lat/bitfire/ical4android/ICalendar$Companion;

    .line 669
    .line 670
    invoke-virtual {v1, v0}, Lat/bitfire/ical4android/ICalendar$Companion;->softValidate(Lnet/fortuna/ical4j/model/Calendar;)V

    .line 671
    .line 672
    .line 673
    new-instance v1, Lnet/fortuna/ical4j/data/CalendarOutputter;

    .line 674
    .line 675
    invoke-direct {v1, v8}, Lnet/fortuna/ical4j/data/CalendarOutputter;-><init>(Z)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v1, v0, p1}, Lnet/fortuna/ical4j/data/CalendarOutputter;->output(Lnet/fortuna/ical4j/model/Calendar;Ljava/io/OutputStream;)V

    .line 679
    .line 680
    .line 681
    return-void
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
.end method
