.class Lcom/android/calendar/event/b$d;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/b;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/b$d;->a:Lcom/android/calendar/event/b;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/b$d;->a:Lcom/android/calendar/event/b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/event/b;->k(Lcom/android/calendar/event/b;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/b$d;->a:Lcom/android/calendar/event/b;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/calendar/event/b;->l(Lcom/android/calendar/event/b;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/event/b$d;->a:Lcom/android/calendar/event/b;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/calendar/event/b;->h(Lcom/android/calendar/event/b;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p2, -0x1

    .line 18
    if-eq p1, p2, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/calendar/event/b$d;->a:Lcom/android/calendar/event/b;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/calendar/event/b;->h(Lcom/android/calendar/event/b;)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {p1, p2}, Lcom/android/calendar/event/b;->g(Lcom/android/calendar/event/b;I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/b$d;->a:Lcom/android/calendar/event/b;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/android/calendar/event/b;->o(Lcom/android/calendar/event/b;)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/miui/calendar/util/s;->e(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    return-void
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method
