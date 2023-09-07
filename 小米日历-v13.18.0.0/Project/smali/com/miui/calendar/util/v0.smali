.class public final synthetic Lcom/miui/calendar/util/v0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;ZLandroid/view/View;IIIILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/util/v0;->a:Landroid/view/View;

    iput-boolean p2, p0, Lcom/miui/calendar/util/v0;->b:Z

    iput-object p3, p0, Lcom/miui/calendar/util/v0;->c:Landroid/view/View;

    iput p4, p0, Lcom/miui/calendar/util/v0;->d:I

    iput p5, p0, Lcom/miui/calendar/util/v0;->e:I

    iput p6, p0, Lcom/miui/calendar/util/v0;->f:I

    iput p7, p0, Lcom/miui/calendar/util/v0;->g:I

    iput-object p8, p0, Lcom/miui/calendar/util/v0;->h:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/calendar/util/v0;->a:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/calendar/util/v0;->b:Z

    iget-object v2, p0, Lcom/miui/calendar/util/v0;->c:Landroid/view/View;

    iget v3, p0, Lcom/miui/calendar/util/v0;->d:I

    iget v4, p0, Lcom/miui/calendar/util/v0;->e:I

    iget v5, p0, Lcom/miui/calendar/util/v0;->f:I

    iget v6, p0, Lcom/miui/calendar/util/v0;->g:I

    iget-object v7, p0, Lcom/miui/calendar/util/v0;->h:Landroid/view/View;

    invoke-static/range {v0 .. v7}, Lcom/miui/calendar/util/x0;->a(Landroid/view/View;ZLandroid/view/View;IIIILandroid/view/View;)V

    return-void
.end method
