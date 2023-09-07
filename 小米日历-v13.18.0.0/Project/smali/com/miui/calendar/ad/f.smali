.class public final synthetic Lcom/miui/calendar/ad/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/ad/e$b;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/ad/e$b;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/ad/f;->a:Lcom/miui/calendar/ad/e$b;

    iput-object p2, p0, Lcom/miui/calendar/ad/f;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/ad/f;->a:Lcom/miui/calendar/ad/e$b;

    iget-object v1, p0, Lcom/miui/calendar/ad/f;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/miui/calendar/ad/e$b;->a(Lcom/miui/calendar/ad/e$b;Landroid/content/Intent;)V

    return-void
.end method
