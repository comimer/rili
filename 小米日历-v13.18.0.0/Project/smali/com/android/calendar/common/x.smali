.class public final synthetic Lcom/android/calendar/common/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/common/x;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/calendar/common/x;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/common/x;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/calendar/common/x;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/calendar/common/ShortcutsReceiver;->a(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
