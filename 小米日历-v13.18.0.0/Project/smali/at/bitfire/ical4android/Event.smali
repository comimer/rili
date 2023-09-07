.class public final Lat/bitfire/ical4android/Event;
.super Lat/bitfire/ical4android/ICalendar;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/ical4android/Event$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u0082\u00012\u00020\u0001:\u0002\u0082\u0001B\t\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0008R$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R$\u0010\u001b\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0013\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R$\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R$\u0010&\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R$\u0010-\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R$\u00104\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R$\u0010;\u001a\u0004\u0018\u00010:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R$\u0010B\u001a\u0004\u0018\u00010A8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001d\u0010J\u001a\u0008\u0012\u0004\u0012\u00020I0H8\u0006\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR\u001d\u0010O\u001a\u0008\u0012\u0004\u0012\u00020N0H8\u0006\u00a2\u0006\u000c\n\u0004\u0008O\u0010K\u001a\u0004\u0008P\u0010MR\u001d\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u00000H8\u0006\u00a2\u0006\u000c\n\u0004\u0008Q\u0010K\u001a\u0004\u0008R\u0010MR$\u0010T\u001a\u0004\u0018\u00010S8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR$\u0010[\u001a\u0004\u0018\u00010Z8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\"\u0010a\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR$\u0010h\u001a\u0004\u0018\u00010g8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR\u001d\u0010o\u001a\u0008\u0012\u0004\u0012\u00020n0H8\u0006\u00a2\u0006\u000c\n\u0004\u0008o\u0010K\u001a\u0004\u0008p\u0010MR\u001d\u0010r\u001a\u0008\u0012\u0004\u0012\u00020q0H8\u0006\u00a2\u0006\u000c\n\u0004\u0008r\u0010K\u001a\u0004\u0008s\u0010MR$\u0010u\u001a\u0004\u0018\u00010t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008u\u0010v\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR\u001d\u0010{\u001a\u0008\u0012\u0004\u0012\u00020\u00110H8\u0006\u00a2\u0006\u000c\n\u0004\u0008{\u0010K\u001a\u0004\u0008|\u0010MR\u001d\u0010~\u001a\u0008\u0012\u0004\u0012\u00020}0H8\u0006\u00a2\u0006\u000c\n\u0004\u0008~\u0010K\u001a\u0004\u0008\u007f\u0010M\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lat/bitfire/ical4android/Event;",
        "Lat/bitfire/ical4android/ICalendar;",
        "Lnet/fortuna/ical4j/model/component/VEvent;",
        "toVEvent",
        "Ljava/io/OutputStream;",
        "os",
        "Lkotlin/u;",
        "write",
        "",
        "isAllDay",
        "Lnet/fortuna/ical4j/model/property/RecurrenceId;",
        "recurrenceId",
        "Lnet/fortuna/ical4j/model/property/RecurrenceId;",
        "getRecurrenceId",
        "()Lnet/fortuna/ical4j/model/property/RecurrenceId;",
        "setRecurrenceId",
        "(Lnet/fortuna/ical4j/model/property/RecurrenceId;)V",
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
        "Lat/bitfire/ical4android/Css3Color;",
        "color",
        "Lat/bitfire/ical4android/Css3Color;",
        "getColor",
        "()Lat/bitfire/ical4android/Css3Color;",
        "setColor",
        "(Lat/bitfire/ical4android/Css3Color;)V",
        "Lnet/fortuna/ical4j/model/property/DtStart;",
        "dtStart",
        "Lnet/fortuna/ical4j/model/property/DtStart;",
        "getDtStart",
        "()Lnet/fortuna/ical4j/model/property/DtStart;",
        "setDtStart",
        "(Lnet/fortuna/ical4j/model/property/DtStart;)V",
        "Lnet/fortuna/ical4j/model/property/DtEnd;",
        "dtEnd",
        "Lnet/fortuna/ical4j/model/property/DtEnd;",
        "getDtEnd",
        "()Lnet/fortuna/ical4j/model/property/DtEnd;",
        "setDtEnd",
        "(Lnet/fortuna/ical4j/model/property/DtEnd;)V",
        "Lnet/fortuna/ical4j/model/property/Duration;",
        "duration",
        "Lnet/fortuna/ical4j/model/property/Duration;",
        "getDuration",
        "()Lnet/fortuna/ical4j/model/property/Duration;",
        "setDuration",
        "(Lnet/fortuna/ical4j/model/property/Duration;)V",
        "Lnet/fortuna/ical4j/model/property/RRule;",
        "rRule",
        "Lnet/fortuna/ical4j/model/property/RRule;",
        "getRRule",
        "()Lnet/fortuna/ical4j/model/property/RRule;",
        "setRRule",
        "(Lnet/fortuna/ical4j/model/property/RRule;)V",
        "Lnet/fortuna/ical4j/model/property/ExRule;",
        "exRule",
        "Lnet/fortuna/ical4j/model/property/ExRule;",
        "getExRule",
        "()Lnet/fortuna/ical4j/model/property/ExRule;",
        "setExRule",
        "(Lnet/fortuna/ical4j/model/property/ExRule;)V",
        "Ljava/util/LinkedList;",
        "Lnet/fortuna/ical4j/model/property/RDate;",
        "rDates",
        "Ljava/util/LinkedList;",
        "getRDates",
        "()Ljava/util/LinkedList;",
        "Lnet/fortuna/ical4j/model/property/ExDate;",
        "exDates",
        "getExDates",
        "exceptions",
        "getExceptions",
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
        "opaque",
        "Z",
        "getOpaque",
        "()Z",
        "setOpaque",
        "(Z)V",
        "Lnet/fortuna/ical4j/model/property/Organizer;",
        "organizer",
        "Lnet/fortuna/ical4j/model/property/Organizer;",
        "getOrganizer",
        "()Lnet/fortuna/ical4j/model/property/Organizer;",
        "setOrganizer",
        "(Lnet/fortuna/ical4j/model/property/Organizer;)V",
        "Lnet/fortuna/ical4j/model/property/Attendee;",
        "attendees",
        "getAttendees",
        "Lnet/fortuna/ical4j/model/component/VAlarm;",
        "alarms",
        "getAlarms",
        "Lnet/fortuna/ical4j/model/property/LastModified;",
        "lastModified",
        "Lnet/fortuna/ical4j/model/property/LastModified;",
        "getLastModified",
        "()Lnet/fortuna/ical4j/model/property/LastModified;",
        "setLastModified",
        "(Lnet/fortuna/ical4j/model/property/LastModified;)V",
        "categories",
        "getCategories",
        "Lnet/fortuna/ical4j/model/Property;",
        "unknownProperties",
        "getUnknownProperties",
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
.field public static final Companion:Lat/bitfire/ical4android/Event$Companion;


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

.field private final attendees:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/property/Attendee;",
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

.field private color:Lat/bitfire/ical4android/Css3Color;

.field private description:Ljava/lang/String;

.field private dtEnd:Lnet/fortuna/ical4j/model/property/DtEnd;

.field private dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

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

.field private exRule:Lnet/fortuna/ical4j/model/property/ExRule;

.field private final exceptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lat/bitfire/ical4android/Event;",
            ">;"
        }
    .end annotation
.end field

.field private lastModified:Lnet/fortuna/ical4j/model/property/LastModified;

.field private location:Ljava/lang/String;

.field private opaque:Z

.field private organizer:Lnet/fortuna/ical4j/model/property/Organizer;

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

.field private recurrenceId:Lnet/fortuna/ical4j/model/property/RecurrenceId;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lat/bitfire/ical4android/Event$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/bitfire/ical4android/Event$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lat/bitfire/ical4android/Event;->Companion:Lat/bitfire/ical4android/Event$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lat/bitfire/ical4android/ICalendar;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lat/bitfire/ical4android/Event;->rDates:Ljava/util/LinkedList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lat/bitfire/ical4android/Event;->exDates:Ljava/util/LinkedList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lat/bitfire/ical4android/Event;->exceptions:Ljava/util/LinkedList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lat/bitfire/ical4android/Event;->opaque:Z

    .line 27
    .line 28
    new-instance v0, Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lat/bitfire/ical4android/Event;->attendees:Ljava/util/LinkedList;

    .line 34
    .line 35
    new-instance v0, Ljava/util/LinkedList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lat/bitfire/ical4android/Event;->alarms:Ljava/util/LinkedList;

    .line 41
    .line 42
    new-instance v0, Ljava/util/LinkedList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lat/bitfire/ical4android/Event;->categories:Ljava/util/LinkedList;

    .line 48
    .line 49
    new-instance v0, Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lat/bitfire/ical4android/Event;->unknownProperties:Ljava/util/LinkedList;

    .line 55
    .line 56
    return-void
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

.method private final toVEvent()Lnet/fortuna/ical4j/model/component/VEvent;
    .locals 6

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/component/VEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "props"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lnet/fortuna/ical4j/model/property/Uid;

    .line 16
    .line 17
    invoke-virtual {p0}, Lat/bitfire/ical4android/ICalendar;->getUid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/property/Uid;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->recurrenceId:Lnet/fortuna/ical4j/model/property/RecurrenceId;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lat/bitfire/ical4android/ICalendar;->getSequence()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance v3, Lnet/fortuna/ical4j/model/property/Sequence;

    .line 47
    .line 48
    invoke-direct {v3, v2}, Lnet/fortuna/ical4j/model/property/Sequence;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->summary:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    new-instance v3, Lnet/fortuna/ical4j/model/property/Summary;

    .line 59
    .line 60
    invoke-direct {v3, v2}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->location:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    new-instance v3, Lnet/fortuna/ical4j/model/property/Location;

    .line 71
    .line 72
    invoke-direct {v3, v2}, Lnet/fortuna/ical4j/model/property/Location;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->description:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    new-instance v3, Lnet/fortuna/ical4j/model/property/Description;

    .line 83
    .line 84
    invoke-direct {v3, v2}, Lnet/fortuna/ical4j/model/property/Description;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->color:Lat/bitfire/ical4android/Css3Color;

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    new-instance v3, Lnet/fortuna/ical4j/model/property/Color;

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-direct {v3, v4, v2}, Lnet/fortuna/ical4j/model/property/Color;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

    .line 108
    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->dtEnd:Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 115
    .line 116
    if-eqz v2, :cond_7

    .line 117
    .line 118
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_7
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->duration:Lnet/fortuna/ical4j/model/property/Duration;

    .line 122
    .line 123
    if-eqz v2, :cond_8

    .line 124
    .line 125
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_8
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->rRule:Lnet/fortuna/ical4j/model/property/RRule;

    .line 129
    .line 130
    if-eqz v2, :cond_9

    .line 131
    .line 132
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_9
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->rDates:Ljava/util/LinkedList;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->exRule:Lnet/fortuna/ical4j/model/property/ExRule;

    .line 141
    .line 142
    if-eqz v2, :cond_a

    .line 143
    .line 144
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_a
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->exDates:Ljava/util/LinkedList;

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->classification:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 153
    .line 154
    if-eqz v2, :cond_b

    .line 155
    .line 156
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_b
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->status:Lnet/fortuna/ical4j/model/property/Status;

    .line 160
    .line 161
    if-eqz v2, :cond_c

    .line 162
    .line 163
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :cond_c
    iget-boolean v2, p0, Lat/bitfire/ical4android/Event;->opaque:Z

    .line 167
    .line 168
    if-nez v2, :cond_d

    .line 169
    .line 170
    sget-object v2, Lnet/fortuna/ical4j/model/property/Transp;->TRANSPARENT:Lnet/fortuna/ical4j/model/property/Transp;

    .line 171
    .line 172
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_d
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->organizer:Lnet/fortuna/ical4j/model/property/Organizer;

    .line 176
    .line 177
    if-eqz v2, :cond_e

    .line 178
    .line 179
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :cond_e
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->attendees:Ljava/util/LinkedList;

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->categories:Ljava/util/LinkedList;

    .line 188
    .line 189
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    xor-int/lit8 v2, v2, 0x1

    .line 194
    .line 195
    if-eqz v2, :cond_f

    .line 196
    .line 197
    new-instance v2, Lnet/fortuna/ical4j/model/property/Categories;

    .line 198
    .line 199
    new-instance v3, Lnet/fortuna/ical4j/model/TextList;

    .line 200
    .line 201
    iget-object v4, p0, Lat/bitfire/ical4android/Event;->categories:Ljava/util/LinkedList;

    .line 202
    .line 203
    const/4 v5, 0x0

    .line 204
    new-array v5, v5, [Ljava/lang/String;

    .line 205
    .line 206
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 211
    .line 212
    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    check-cast v4, [Ljava/lang/String;

    .line 216
    .line 217
    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/model/TextList;-><init>([Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/property/Categories;-><init>(Lnet/fortuna/ical4j/model/TextList;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_f
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->unknownProperties:Ljava/util/LinkedList;

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 229
    .line 230
    .line 231
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->lastModified:Lnet/fortuna/ical4j/model/property/LastModified;

    .line 232
    .line 233
    if-eqz v2, :cond_10

    .line 234
    .line 235
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    :cond_10
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->alarms:Ljava/util/LinkedList;

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 245
    .line 246
    .line 247
    return-object v0
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->alarms:Ljava/util/LinkedList;

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

.method public final getAttendees()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lnet/fortuna/ical4j/model/property/Attendee;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->attendees:Ljava/util/LinkedList;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->categories:Ljava/util/LinkedList;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->classification:Lnet/fortuna/ical4j/model/property/Clazz;

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

.method public final getColor()Lat/bitfire/ical4android/Css3Color;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->color:Lat/bitfire/ical4android/Css3Color;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->description:Ljava/lang/String;

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

.method public final getDtEnd()Lnet/fortuna/ical4j/model/property/DtEnd;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->dtEnd:Lnet/fortuna/ical4j/model/property/DtEnd;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->duration:Lnet/fortuna/ical4j/model/property/Duration;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->exDates:Ljava/util/LinkedList;

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

.method public final getExRule()Lnet/fortuna/ical4j/model/property/ExRule;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->exRule:Lnet/fortuna/ical4j/model/property/ExRule;

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

.method public final getExceptions()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lat/bitfire/ical4android/Event;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->exceptions:Ljava/util/LinkedList;

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

.method public final getLastModified()Lnet/fortuna/ical4j/model/property/LastModified;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->lastModified:Lnet/fortuna/ical4j/model/property/LastModified;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->location:Ljava/lang/String;

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

.method public final getOpaque()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/ical4android/Event;->opaque:Z

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

.method public final getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->organizer:Lnet/fortuna/ical4j/model/property/Organizer;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->rDates:Ljava/util/LinkedList;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->rRule:Lnet/fortuna/ical4j/model/property/RRule;

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

.method public final getRecurrenceId()Lnet/fortuna/ical4j/model/property/RecurrenceId;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->recurrenceId:Lnet/fortuna/ical4j/model/property/RecurrenceId;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->status:Lnet/fortuna/ical4j/model/property/Status;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->summary:Ljava/lang/String;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->unknownProperties:Ljava/util/LinkedList;

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
    iget-object v0, p0, Lat/bitfire/ical4android/Event;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lat/bitfire/ical4android/DateUtils;->INSTANCE:Lat/bitfire/ical4android/DateUtils;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lat/bitfire/ical4android/DateUtils;->isDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setClassification(Lnet/fortuna/ical4j/model/property/Clazz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->classification:Lnet/fortuna/ical4j/model/property/Clazz;

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

.method public final setColor(Lat/bitfire/ical4android/Css3Color;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->color:Lat/bitfire/ical4android/Css3Color;

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
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->description:Ljava/lang/String;

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

.method public final setDtEnd(Lnet/fortuna/ical4j/model/property/DtEnd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->dtEnd:Lnet/fortuna/ical4j/model/property/DtEnd;

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
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

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
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->duration:Lnet/fortuna/ical4j/model/property/Duration;

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

.method public final setExRule(Lnet/fortuna/ical4j/model/property/ExRule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->exRule:Lnet/fortuna/ical4j/model/property/ExRule;

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

.method public final setLastModified(Lnet/fortuna/ical4j/model/property/LastModified;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->lastModified:Lnet/fortuna/ical4j/model/property/LastModified;

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
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->location:Ljava/lang/String;

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

.method public final setOpaque(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lat/bitfire/ical4android/Event;->opaque:Z

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
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->organizer:Lnet/fortuna/ical4j/model/property/Organizer;

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
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->rRule:Lnet/fortuna/ical4j/model/property/RRule;

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

.method public final setRecurrenceId(Lnet/fortuna/ical4j/model/property/RecurrenceId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->recurrenceId:Lnet/fortuna/ical4j/model/property/RecurrenceId;

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

.method public final setStatus(Lnet/fortuna/ical4j/model/property/Status;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->status:Lnet/fortuna/ical4j/model/property/Status;

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
    iput-object p1, p0, Lat/bitfire/ical4android/Event;->summary:Ljava/lang/String;

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
    .locals 10

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
    iget-object v1, p0, Lat/bitfire/ical4android/Event;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

    .line 47
    .line 48
    if-eqz v1, :cond_d

    .line 49
    .line 50
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {p0}, Lat/bitfire/ical4android/Event;->toVEvent()Lnet/fortuna/ical4j/model/component/VEvent;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string v4, "components"

    .line 59
    .line 60
    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_0
    iget-object v4, p0, Lat/bitfire/ical4android/Event;->dtEnd:Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 81
    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_1

    .line 89
    .line 90
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-object v4, p0, Lat/bitfire/ical4android/Event;->exceptions:Ljava/util/LinkedList;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lat/bitfire/ical4android/Event;

    .line 110
    .line 111
    invoke-virtual {p0}, Lat/bitfire/ical4android/ICalendar;->getUid()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v5, v6}, Lat/bitfire/ical4android/ICalendar;->setUid(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v6, v5, Lat/bitfire/ical4android/Event;->recurrenceId:Lnet/fortuna/ical4j/model/property/RecurrenceId;

    .line 119
    .line 120
    if-nez v6, :cond_3

    .line 121
    .line 122
    sget-object v5, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 123
    .line 124
    invoke-virtual {v5}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    const-string v6, "Ignoring exception without recurrenceId"

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    sget-object v7, Lat/bitfire/ical4android/DateUtils;->INSTANCE:Lat/bitfire/ical4android/DateUtils;

    .line 135
    .line 136
    invoke-virtual {v7, v6}, Lat/bitfire/ical4android/DateUtils;->isDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    invoke-virtual {v7, v1}, Lat/bitfire/ical4android/DateUtils;->isDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)Z

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    if-eq v8, v9, :cond_4

    .line 145
    .line 146
    sget-object v5, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 147
    .line 148
    invoke-virtual {v5}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v8, "Ignoring exception "

    .line 158
    .line 159
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v6, " with other date type than dtStart: "

    .line 166
    .line 167
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {v7, v6}, Lat/bitfire/ical4android/DateUtils;->isDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-eqz v7, :cond_5

    .line 186
    .line 187
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_5

    .line 200
    .line 201
    sget-object v7, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 202
    .line 203
    invoke-virtual {v7}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    new-instance v8, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v9, "Changing timezone of "

    .line 213
    .line 214
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v9, " to same time zone as dtStart: "

    .line 221
    .line 222
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v6, v7}, Lnet/fortuna/ical4j/model/property/DateProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 240
    .line 241
    .line 242
    :cond_5
    invoke-direct {v5}, Lat/bitfire/ical4android/Event;->toVEvent()Lnet/fortuna/ical4j/model/component/VEvent;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    iget-object v6, v5, Lat/bitfire/ical4android/Event;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

    .line 250
    .line 251
    if-eqz v6, :cond_6

    .line 252
    .line 253
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    if-eqz v6, :cond_6

    .line 258
    .line 259
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    :cond_6
    iget-object v5, v5, Lat/bitfire/ical4android/Event;->dtEnd:Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 263
    .line 264
    if-eqz v5, :cond_2

    .line 265
    .line 266
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    if-eqz v5, :cond_2

    .line 271
    .line 272
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_7
    const/4 v2, 0x1

    .line 278
    new-array v2, v2, [Lnet/fortuna/ical4j/model/Date;

    .line 279
    .line 280
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    const/4 v4, 0x0

    .line 285
    aput-object v1, v2, v4

    .line 286
    .line 287
    invoke-static {v2}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget-object v2, p0, Lat/bitfire/ical4android/Event;->exceptions:Ljava/util/LinkedList;

    .line 292
    .line 293
    new-instance v5, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    if-eqz v6, :cond_a

    .line 307
    .line 308
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    check-cast v6, Lat/bitfire/ical4android/Event;

    .line 313
    .line 314
    iget-object v6, v6, Lat/bitfire/ical4android/Event;->dtStart:Lnet/fortuna/ical4j/model/property/DtStart;

    .line 315
    .line 316
    if-eqz v6, :cond_9

    .line 317
    .line 318
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    goto :goto_2

    .line 323
    :cond_9
    const/4 v6, 0x0

    .line 324
    :goto_2
    if-eqz v6, :cond_8

    .line 325
    .line 326
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_a
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    .line 332
    .line 333
    invoke-static {v1}, Lkotlin/collections/t;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-static {v1}, Lkotlin/collections/t;->a0(Ljava/util/List;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 342
    .line 343
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-eqz v3, :cond_c

    .line 352
    .line 353
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    check-cast v3, Lnet/fortuna/ical4j/model/TimeZone;

    .line 358
    .line 359
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/TimeZone;->getVTimeZone()Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    if-eqz v1, :cond_b

    .line 364
    .line 365
    sget-object v5, Lat/bitfire/ical4android/ICalendar;->Companion:Lat/bitfire/ical4android/ICalendar$Companion;

    .line 366
    .line 367
    const-string v6, "tz"

    .line 368
    .line 369
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5, v3, v1}, Lat/bitfire/ical4android/ICalendar$Companion;->minifyVTimeZone(Lnet/fortuna/ical4j/model/component/VTimeZone;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    :cond_b
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    const-string v6, "ical.components"

    .line 381
    .line 382
    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_c
    sget-object v1, Lat/bitfire/ical4android/ICalendar;->Companion:Lat/bitfire/ical4android/ICalendar$Companion;

    .line 390
    .line 391
    invoke-virtual {v1, v0}, Lat/bitfire/ical4android/ICalendar$Companion;->softValidate(Lnet/fortuna/ical4j/model/Calendar;)V

    .line 392
    .line 393
    .line 394
    new-instance v1, Lnet/fortuna/ical4j/data/CalendarOutputter;

    .line 395
    .line 396
    invoke-direct {v1, v4}, Lnet/fortuna/ical4j/data/CalendarOutputter;-><init>(Z)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v0, p1}, Lnet/fortuna/ical4j/data/CalendarOutputter;->output(Lnet/fortuna/ical4j/model/Calendar;Ljava/io/OutputStream;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_d
    new-instance p1, Lat/bitfire/ical4android/InvalidCalendarException;

    .line 404
    .line 405
    const-string v0, "Won\'t generate event without start time"

    .line 406
    .line 407
    invoke-direct {p1, v0}, Lat/bitfire/ical4android/InvalidCalendarException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw p1
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method
