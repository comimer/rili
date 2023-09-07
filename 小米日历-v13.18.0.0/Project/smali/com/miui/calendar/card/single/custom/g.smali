.class public final synthetic Lcom/miui/calendar/card/single/custom/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/g;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/g;->b:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/miui/calendar/card/single/custom/g;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/g;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/g;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/g;->c:Landroid/view/View;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/calendar/card/single/custom/FilmSingleCard;->F(Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
