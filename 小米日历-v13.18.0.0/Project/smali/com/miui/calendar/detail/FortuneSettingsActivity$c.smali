.class Lcom/miui/calendar/detail/FortuneSettingsActivity$c;
.super Ljava/lang/Object;
.source "FortuneSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/detail/FortuneSettingsActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Lcom/miui/calendar/detail/FortuneSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/detail/FortuneSettingsActivity;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/detail/FortuneSettingsActivity$c;->b:Lcom/miui/calendar/detail/FortuneSettingsActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/miui/calendar/detail/FortuneSettingsActivity$c;->a:Landroid/view/inputmethod/InputMethodManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
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
.end method

.method public static synthetic a(Lcom/miui/calendar/detail/FortuneSettingsActivity$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/calendar/detail/FortuneSettingsActivity$c;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/detail/FortuneSettingsActivity$c;->b:Lcom/miui/calendar/detail/FortuneSettingsActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/detail/FortuneSettingsActivity;->b0(Lcom/miui/calendar/detail/FortuneSettingsActivity;)V

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
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/detail/FortuneSettingsActivity$c;->a:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/miui/calendar/detail/FortuneSettingsActivity$c;->b:Lcom/miui/calendar/detail/FortuneSettingsActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/miui/calendar/detail/FortuneSettingsActivity;->a0(Lcom/miui/calendar/detail/FortuneSettingsActivity;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/miui/calendar/detail/h;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/miui/calendar/detail/h;-><init>(Lcom/miui/calendar/detail/FortuneSettingsActivity$c;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v1, 0xc8

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    return-void
    .line 28
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
.end method
