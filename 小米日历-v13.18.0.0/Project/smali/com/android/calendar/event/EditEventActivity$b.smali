.class Lcom/android/calendar/event/EditEventActivity$b;
.super Ljava/lang/Object;
.source "EditEventActivity.java"

# interfaces
.implements Lcom/miui/calendar/util/z0$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/EditEventActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/EditEventActivity$b;->a:Lcom/android/calendar/event/EditEventActivity;

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
    iget-object v0, p0, Lcom/android/calendar/event/EditEventActivity$b;->a:Lcom/android/calendar/event/EditEventActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/calendar/event/EditEventActivity$b;->a:Lcom/android/calendar/event/EditEventActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/app/m;->finish()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/EditEventActivity$b;->a:Lcom/android/calendar/event/EditEventActivity;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Lcom/android/calendar/event/EditEventActivity;->e0(Lcom/android/calendar/event/EditEventActivity;Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
