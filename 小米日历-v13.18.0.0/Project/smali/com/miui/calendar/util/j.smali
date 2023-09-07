.class public final synthetic Lcom/miui/calendar/util/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/miui/calendar/util/f0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/miui/calendar/util/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/util/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/calendar/util/j;->b:Lcom/miui/calendar/util/f0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/util/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/calendar/util/j;->b:Lcom/miui/calendar/util/f0;

    invoke-static {v0, v1}, Lcom/miui/calendar/util/k;->a(Landroid/content/Context;Lcom/miui/calendar/util/f0;)V

    return-void
.end method
