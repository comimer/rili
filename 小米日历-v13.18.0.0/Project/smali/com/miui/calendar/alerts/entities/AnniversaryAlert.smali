.class public Lcom/miui/calendar/alerts/entities/AnniversaryAlert;
.super Lcom/miui/calendar/alerts/entities/BaseAlert;
.source "AnniversaryAlert.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/calendar/alerts/entities/BaseAlert<",
        "Lcom/android/calendar/common/event/schema/AnniversaryEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/calendar/alerts/entities/AnniversaryAlert;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/alerts/entities/AnniversaryAlert$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/alerts/entities/AnniversaryAlert$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/calendar/alerts/entities/AnniversaryAlert$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getAdapter(Landroid/content/Context;I)Ln3/b;
    .locals 1

    .line 2
    new-instance v0, Ln3/b;

    invoke-direct {v0, p1, p0}, Ln3/b;-><init>(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/AnniversaryAlert;)V

    .line 3
    invoke-virtual {v0, p2}, Ln3/c;->n(I)V

    return-object v0
.end method

.method public bridge synthetic getAdapter(Landroid/content/Context;I)Ln3/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;->getAdapter(Landroid/content/Context;I)Ln3/b;

    move-result-object p1

    return-object p1
.end method

.method public getRemindType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public loadAnotherOne(Landroid/content/Context;)Lcom/miui/calendar/alerts/entities/AnniversaryAlert;
    .locals 5

    .line 2
    new-instance v0, Lo3/b;

    invoke-direct {v0, p1}, Lo3/b;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAlertAt()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lo3/b;->b(JJ)Lcom/miui/calendar/alerts/entities/AnniversaryAlert;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadAnotherOne(Landroid/content/Context;)Lcom/miui/calendar/alerts/entities/BaseAlert;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;->loadAnotherOne(Landroid/content/Context;)Lcom/miui/calendar/alerts/entities/AnniversaryAlert;

    move-result-object p1

    return-object p1
.end method

.method public needPopup(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "anniversary"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo1/g;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
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
