.class public final synthetic Lo1/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/alerts/DismissAlarmsService;

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/alerts/DismissAlarmsService;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/h;->a:Lcom/android/calendar/alerts/DismissAlarmsService;

    iput-object p2, p0, Lo1/h;->b:Landroid/net/Uri;

    iput-object p3, p0, Lo1/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo1/h;->a:Lcom/android/calendar/alerts/DismissAlarmsService;

    iget-object v1, p0, Lo1/h;->b:Landroid/net/Uri;

    iget-object v2, p0, Lo1/h;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/alerts/DismissAlarmsService;->a(Lcom/android/calendar/alerts/DismissAlarmsService;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
