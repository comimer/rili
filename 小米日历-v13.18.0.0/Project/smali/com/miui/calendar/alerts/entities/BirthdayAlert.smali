.class public Lcom/miui/calendar/alerts/entities/BirthdayAlert;
.super Lcom/miui/calendar/alerts/entities/BaseAlert;
.source "BirthdayAlert.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/calendar/alerts/entities/BaseAlert<",
        "Lcom/android/calendar/common/event/schema/BirthdayEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/calendar/alerts/entities/BirthdayAlert;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/alerts/entities/BirthdayAlert$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/alerts/entities/BirthdayAlert$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/miui/calendar/alerts/entities/BirthdayAlert;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/calendar/alerts/entities/BirthdayAlert$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/calendar/alerts/entities/BirthdayAlert;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter(Landroid/content/Context;I)Ln3/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/alerts/entities/BirthdayAlert;->getAdapter(Landroid/content/Context;I)Ln3/d;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter(Landroid/content/Context;I)Ln3/d;
    .locals 1

    .line 2
    new-instance v0, Ln3/d;

    invoke-direct {v0, p1, p0}, Ln3/d;-><init>(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BirthdayAlert;)V

    .line 3
    invoke-virtual {v0, p2}, Ln3/c;->n(I)V

    return-object v0
.end method

.method public getEvent(Landroid/content/Context;)Lcom/android/calendar/common/event/schema/BirthdayEvent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEvent:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p1, v0, v1}, Ls1/b;->b(Landroid/content/Context;J)Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEvent:Lcom/android/calendar/common/event/schema/Event;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEvent:Lcom/android/calendar/common/event/schema/Event;

    .line 16
    .line 17
    check-cast p1, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 18
    .line 19
    return-object p1
    .line 20
    .line 21
    .line 22
.end method

.method public getRemindType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/calendar/alerts/entities/BirthdayAlert;->getEvent(Landroid/content/Context;)Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/miui/calendar/util/y;->q(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getDateType()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic loadAnotherOne(Landroid/content/Context;)Lcom/miui/calendar/alerts/entities/BaseAlert;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/calendar/alerts/entities/BirthdayAlert;->loadAnotherOne(Landroid/content/Context;)Lcom/miui/calendar/alerts/entities/BirthdayAlert;

    move-result-object p1

    return-object p1
.end method

.method public loadAnotherOne(Landroid/content/Context;)Lcom/miui/calendar/alerts/entities/BirthdayAlert;
    .locals 1

    .line 2
    new-instance v0, Lo3/e;

    invoke-direct {v0, p1}, Lo3/e;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAlertId()I

    move-result p1

    invoke-virtual {v0, p1}, Lo3/c;->c(I)Lcom/miui/calendar/alerts/entities/BaseAlert;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/alerts/entities/BirthdayAlert;

    return-object p1
.end method

.method public needPopup(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/calendar/alerts/entities/BirthdayAlert;->getEvent(Landroid/content/Context;)Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "birthday_contacts"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "birthday_manual"

    .line 15
    .line 16
    :goto_0
    invoke-static {p1, v0}, Lo1/g;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
    .line 21
    .line 22
.end method
