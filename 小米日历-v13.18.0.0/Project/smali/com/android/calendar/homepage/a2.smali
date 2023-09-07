.class public final synthetic Lcom/android/calendar/homepage/a2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/c2;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/c2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/a2;->a:Lcom/android/calendar/homepage/c2;

    iput p2, p0, Lcom/android/calendar/homepage/a2;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/a2;->a:Lcom/android/calendar/homepage/c2;

    iget v1, p0, Lcom/android/calendar/homepage/a2;->b:I

    invoke-static {v0, v1, p1}, Lcom/android/calendar/homepage/c2;->a(Lcom/android/calendar/homepage/c2;ILandroid/view/View;)V

    return-void
.end method
