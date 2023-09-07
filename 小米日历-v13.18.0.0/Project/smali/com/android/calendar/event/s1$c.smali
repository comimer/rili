.class Lcom/android/calendar/event/s1$c;
.super Ljava/lang/Object;
.source "NewEditTrainArriveStationFragment.java"

# interfaces
.implements Lcom/miui/calendar/util/z0$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/s1;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/s1;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/s1$c;->a:Lcom/android/calendar/event/s1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/s1$c;->a:Lcom/android/calendar/event/s1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/event/s1;->a0(Lcom/android/calendar/event/s1;)V

    .line 4
    .line 5
    .line 6
    return-void
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

.method public b(Z)V
    .locals 1

    .line 1
    const-string p1, "Cal:D:EditTrainArriveStationFragment"

    .line 2
    .line 3
    const-string v0, "requestArriveStationData: onNotAccept"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/calendar/event/s1$c;->a:Lcom/android/calendar/event/s1;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/calendar/event/s1;->Z(Lcom/android/calendar/event/s1;)Lcom/miui/calendar/view/LoadingView;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/miui/calendar/view/LoadingView;->d()V

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
