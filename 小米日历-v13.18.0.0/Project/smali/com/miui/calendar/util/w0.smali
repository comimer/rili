.class public final synthetic Lcom/miui/calendar/util/w0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ZLandroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/calendar/util/w0;->a:Z

    iput-object p2, p0, Lcom/miui/calendar/util/w0;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/calendar/util/w0;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/calendar/util/w0;->a:Z

    iget-object v1, p0, Lcom/miui/calendar/util/w0;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/calendar/util/w0;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/miui/calendar/util/x0;->b(ZLandroid/view/View;Landroid/view/View;)V

    return-void
.end method
