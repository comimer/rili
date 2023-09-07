.class public final synthetic Lcom/miui/calendar/ad/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/ad/e$d;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/ad/e$d;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/ad/g;->a:Lcom/miui/calendar/ad/e$d;

    iput-object p2, p0, Lcom/miui/calendar/ad/g;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/calendar/ad/g;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/ad/g;->a:Lcom/miui/calendar/ad/e$d;

    iget-object v1, p0, Lcom/miui/calendar/ad/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/calendar/ad/g;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/miui/calendar/ad/e$d;->a(Lcom/miui/calendar/ad/e$d;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
