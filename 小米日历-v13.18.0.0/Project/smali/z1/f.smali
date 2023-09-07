.class public final synthetic Lz1/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/dragview/AccountSettingBottomView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/dragview/AccountSettingBottomView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/f;->a:Lcom/android/calendar/dragview/AccountSettingBottomView;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lz1/f;->a:Lcom/android/calendar/dragview/AccountSettingBottomView;

    invoke-static {v0, p1, p2}, Lcom/android/calendar/dragview/AccountSettingBottomView;->d(Lcom/android/calendar/dragview/AccountSettingBottomView;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
