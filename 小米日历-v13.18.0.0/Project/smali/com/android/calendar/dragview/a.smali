.class public final synthetic Lcom/android/calendar/dragview/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/dragview/AccountSettingBottomView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/calendar/dragview/AccountSettingBottomView$a;

.field public final synthetic d:Lcom/android/calendar/dragview/AccountSettingBottomView$b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/dragview/AccountSettingBottomView;ILcom/android/calendar/dragview/AccountSettingBottomView$a;Lcom/android/calendar/dragview/AccountSettingBottomView$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/dragview/a;->a:Lcom/android/calendar/dragview/AccountSettingBottomView;

    iput p2, p0, Lcom/android/calendar/dragview/a;->b:I

    iput-object p3, p0, Lcom/android/calendar/dragview/a;->c:Lcom/android/calendar/dragview/AccountSettingBottomView$a;

    iput-object p4, p0, Lcom/android/calendar/dragview/a;->d:Lcom/android/calendar/dragview/AccountSettingBottomView$b;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/calendar/dragview/a;->a:Lcom/android/calendar/dragview/AccountSettingBottomView;

    iget v1, p0, Lcom/android/calendar/dragview/a;->b:I

    iget-object v2, p0, Lcom/android/calendar/dragview/a;->c:Lcom/android/calendar/dragview/AccountSettingBottomView$a;

    iget-object v3, p0, Lcom/android/calendar/dragview/a;->d:Lcom/android/calendar/dragview/AccountSettingBottomView$b;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/dragview/AccountSettingBottomView$a;->f(Lcom/android/calendar/dragview/AccountSettingBottomView;ILcom/android/calendar/dragview/AccountSettingBottomView$a;Lcom/android/calendar/dragview/AccountSettingBottomView$b;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
