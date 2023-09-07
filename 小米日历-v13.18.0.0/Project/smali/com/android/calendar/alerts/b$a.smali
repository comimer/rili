.class Lcom/android/calendar/alerts/b$a;
.super Ljava/lang/Object;
.source "AlertListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/alerts/b;->u(Landroid/view/View;Lcom/miui/calendar/alerts/entities/BaseAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/alerts/entities/BaseAlert;

.field final synthetic b:Lcom/android/calendar/alerts/b;


# direct methods
.method constructor <init>(Lcom/android/calendar/alerts/b;Lcom/miui/calendar/alerts/entities/BaseAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/alerts/b$a;->b:Lcom/android/calendar/alerts/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/alerts/b$a;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/calendar/alerts/b$a;->b:Lcom/android/calendar/alerts/b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/alerts/b;->t(Lcom/android/calendar/alerts/b;)Lcom/android/calendar/alerts/b$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/calendar/alerts/b$a;->b:Lcom/android/calendar/alerts/b;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/calendar/alerts/b;->t(Lcom/android/calendar/alerts/b;)Lcom/android/calendar/alerts/b$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/calendar/alerts/b$a;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/android/calendar/alerts/b$b;->a(Lcom/miui/calendar/alerts/entities/BaseAlert;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
    .line 21
    .line 22
.end method
