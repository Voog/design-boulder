! function(t) {
  "use strict";
  var e = {
    type: null,
    id: null
  },
  i = function(i) {
    this.options = t.extend({}, e, i), this._callbacks = {}
  };
  i.prototype = {
    get: function() {
      var t = arguments && arguments[0] && "string" == typeof arguments[0] ? arguments[0] : null,
      e = t ? arguments[1] ? arguments[1] : null : arguments[0] || null;
      this.getUrl(), this.request({
        method: "GET",
        callf: "get",
        key: t,
        callbacks: e
      })
    },
    set: function() {
      var t = arguments && arguments[0] && "string" == typeof arguments[0] ? arguments[0] : null,
      e = t ? arguments[1] : arguments[0] || null,
      i = t ? arguments[2] ? arguments[2] : null : arguments[1] || null,
      a = this.wrapData(e, t);
      this.request({
        method: "string" == typeof arguments[0] ? "PUT" : "PATCH",
        callf: "set",
        data: a,
        key: t,
        callbacks: i
      })
    },
    reset: function() {
      var t = arguments && arguments[0] && "string" == typeof arguments[0] ? arguments[0] : null,
      e = t ? arguments[1] : arguments[0] || null,
      i = t ? arguments[2] ? arguments[2] : null : arguments[1] || null,
      a = this.wrapData(e, t);
      this.request({
        method: "PUT",
        callf: "reset",
        data: a,
        key: t,
        callbacks: i
      })
    },
    remove: function(t, e) {
      this.request({
        method: "DELETE",
        callf: "remove",
        key: t,
        callbacks: e
      })
    },
    request: function(e) {
      var i = this.getUrl(e.key),
      a = {
        type: e.method,
        dataType: "json",
        contentType: "application/json",
        url: i,
        success: t.proxy(function(t) {
          this.handleSuccess(t, e.callf, e.key, e.callbacks)
        }, this),
        error: t.proxy(function(t) {
          this.handleError(t, e.callf, e.key, e.callbacks)
        }, this)
      };
      e.data && (a.data = JSON.stringify(e.data)), t.ajax(a)
    },
    handleSuccess: function(t, e, i, a) {
      var s = t ? t.data || t : null;
      s && i && "get" === e && (s = s[i]), a && a.success && a.success(s), this.trigger("success", s, {
        type: e,
        key: i
      })
    },
    handleError: function(t, e, i, a) {
      var s = t.responseText ? JSON.parse(t.responseText) : null;
      a && a.error && a.error(s), this.trigger("error", s, {
        type: e,
        key: i
      })
    },
    getUrl: function(t) {
      var e = "/admin/api/";
      return e += this.options.id ? this.options.type + "s/" + this.options.id : this.options.type, e += t ? "/data/" + t : "", e += ".json"
    },
    wrapData: function(t, e) {
      var i = null;
      return null !== t && (i = {}, t instanceof Object ? (i[this.getTypeWrapper(e)] = {}, "string" == typeof e ? i[this.getTypeWrapper(e)] = t : i[this.getTypeWrapper(e)].data = t) : i[this.getTypeWrapper(e)] = t), i
    },
    getTypeWrapper: function(t) {
      return t ? "value" : this.options.type || !1
    },
    on: function(e, i) {
      this._callbacks[e] || (this._callbacks[e] = t.Callbacks()), this._callbacks[e].add(i)
    },
    off: function(t, e) {
      this._callbacks[t] && (e ? this._callbacks[t].remove(e) : this._callbacks[t].empty())
    },
    trigger: function(t, e, i) {
      this._callbacks[t] && this._callbacks[t].fire(e, i)
    }
  }, Edicy.CustomData = i
}(Edicy.jQuery),
function() {
  this.JST || (this.JST = {}), this.JST["admin/templates/tools_bgpicker"] = function(obj) {
    var __p = [];
    with(obj || {}) __p.push('<div data-cid="', cid, '"></div>\n');
    return __p.join("")
  }
}.call(this),
function(t) {
  "use strict";
  var e = {
    preview: function() {},
    commit: function() {},
    picture: !0,
    color: !0,
    template: '<div class="edy-bgpicker-inner"><div class="edy-tb-tabs"><div class="edy-bgpicker-picture-btn"><button class="edy-btn edy-btn-blue" data-tab-id="picture">Picture</button></div><div class="edy-bgpicker-color-btn"><button class="edy-btn edy-btn-white" data-tab-id="color">Color</button></div></div><div class="edy-bgpicker-tab edy-bgpicker-droparea" data-tab-id="picture"><div class="edy-bgpicker-image"><div class="bg-picker-remove-image"></div></div><div class="edy-bgpicker-notification">Drag a new picture here from the files panel.</div></div><div class="edy-bgpicker-tab" data-tab-id="color"><div class="edy-bgpicker-color"></div></div></div>'
  },
  i = function(i, a) {
    this.$el = t(i), this.options = t.extend({}, e, a), this.init()
  };
  i.prototype = {
    init: function() {
      this.backgroundColor = this.$el.data("bg-color"), this.backgroundImage = this.$el.data("bg-image"), this.initialBgColor = this.backgroundColor, this.initialBgImage = this.backgroundImage, this.makeModal(), this.$el.addClass("edy-bgpicker-toggle-button"), this.$el.on("click", t.proxy(this.handleBtnClick, this))
    },
    handleBtnClick: function(t) {
      t.preventDefault(), this.modal.toggle()
    },
    handleBgColorReset: function() {
      var e = this.$modal.find(".colpick_current_color").css("background-color");
      t(this.options.backgroundShowArea).css("background-color", e), this.handleBgColorChange()
    },
    loadCurrentImage: function() {
      this.$modal.find(".edy-bgpicker-image").css("background-image", 'url("' + this.backgroundImage + '")')
    },
    makeModal: function() {
      this.modal = new Edicy.PopoverView({
        parent: this.$el,
        arrow: "big",
        containerClass: "edy-bgpicker",
        body: this.options.template,
        events: {
          "click .edy-tb-tabs button": t.proxy(this.handleTabClick, this),
          "click .bg-picker-remove-image": t.proxy(this.handleRemoveImage, this),
          "draggable:dragenter .edy-bgpicker-droparea": t.proxy(this.handleDropenter, this),
          "draggable:dragleave .edy-bgpicker-droparea": t.proxy(this.handleDropleave, this),
          "draggable:drop .edy-bgpicker-droparea": t.proxy(this.handleDrop, this)
        }
      }).render(), this.modal.on("edicy:popover:closed", t.proxy(this.handlePopoverClose, this)), this.$modal = this.modal.$el, this.options.color && (this.$modal.addClass("edy-bgpicker-handle-color"), this.colorpicker = new Edicy.ColorpickerView({
        showAlpha: this.options && this.options.showAlpha
      }).render(), this.colorpicker.on({
        colorchange: t.proxy(this.handleBgColorChange, this)
      }, this), this.$modal.find(".edy-bgpicker-color").append(this.colorpicker.el), this.colorpicker.setValue(this.backgroundColor), this.colorObj = this.colorpicker.getCurrentColorData(), this.initialColorObj = this.colorObj), this.options.picture && (this.$modal.addClass("edy-bgpicker-handle-picture"), this.backgroundImage && this.$modal.find(".edy-bgpicker-image").css("background-image", 'url("' + this.backgroundImage + '")').addClass("active")), !this.options.picture && this.options.color ? (this.$modal.find('.edy-bgpicker-tab[data-tab-id="color"]').addClass("active"), this.$modal.find(".edy-bgpicker-color-btn button").removeClass("edy-btn-white").addClass("edy-btn-blue")) : this.$modal.find('.edy-bgpicker-tab[data-tab-id="picture"]').addClass("active")
    },
    handlePopoverClose: function() {
      this.dontSaveNextClose ? this.dontSaveNextClose = !1 : this.callCommit()
    },
    handleBgColorChange: function(t, e, i) {
      this.backgroundColor = t, this.colorObj = i, this.callPreview()
    },
    handleBgImageChange: function() {
      this.$modal.find(".edy-bgpicker-image").css("background-image", 'url("' + this.backgroundImage + '")').addClass("active"), this.callPreview(), this.dontSaveNextClose = !0, setTimeout(t.proxy(function() {
        this.modal.show(), this.dontSaveNextClose = !1
      }, this), 0)
    },
    handleRemoveImage: function() {
      this.backgroundImage = null, this.$modal.find(".edy-bgpicker-image").css("background-image", "").removeClass("active"), this.callPreview()
    },
    callPreview: function() {
      this.options.preview && this.options.preview({
        image: this.backgroundImage,
        color: this.backgroundColor,
        colorData: this.colorObj
      })
    },
    callCommit: function() {
      (this.initialBgImage !== this.backgroundImage || this.initialBgColor !== this.backgroundColor) && (this.options.commit && this.options.commit({
        image: this.backgroundImage,
        color: this.backgroundColor,
        colorData: this.colorObj
      }), this.initialBgImage = this.backgroundImage, this.initialBgColor = this.backgroundColor)
    },
    callCancel: function() {
      this.dontSaveNextClose = !0, this.backgroundImage = this.initialBgImage, this.backgroundColor = this.initialBgColor, this.colorObj = this.initialColorObj, this.callPreview(), this.modal.hide()
    },
    handleTabClick: function(e) {
      var i = t(e.target).closest("button"),
      a = this.$modal.find('.edy-bgpicker-tab[data-tab-id="' + i.data("tab-id") + '"]');
      this.$modal.find(".edy-tb-tabs button.edy-btn-blue").removeClass("edy-btn-blue").addClass("edy-btn-white"), i.removeClass("edy-btn-white").addClass("edy-btn-blue"), this.$modal.find(".edy-bgpicker-tab.active").removeClass("active"), i.add(a).addClass("active")
    },
    handleDrop: function(t, e) {
      this.$el.removeClass("over"), "photo" === e.payload.type && (this.backgroundImage = e.payload.url, this.handleBgImageChange())
    },
    handleDropenter: function() {
      this.$modal.addClass("edy-bgpicker-dropover")
    },
    handleDropleave: function() {
      this.$modal.removeClass("edy-bgpicker-dropover")
    }
  }, Edicy.BgPicker = i
}(Edicy.jQuery),
function(t) {
  "use strict";
  var e = {
    positionable: !1,
    placeholder: '<div class="edy-img-drop-area-placeholder">Drag a new picture here from the files panel.</div>',
    removeBtn: '<div class="edy-img-drop-area-remove-image"></div>',
    onChange: function() {}
  },
  i = function(i, a) {
    this.$el = t(i), this.options = t.extend({}, e, a), this.init()
  };
  i.prototype = {
    init: function() {
      this.$el.addClass("edy-img-drop-area"), this.image = {
        url: this.$el.data("image") || null,
        width: this.$el.data("dimensions") ? parseFloat(this.$el.data("dimensions").split(",")[0]) : null,
        height: this.$el.data("dimensions") ? parseFloat(this.$el.data("dimensions").split(",")[1]) : null,
        top: this.$el.data("position") ? parseFloat(this.$el.data("position").split(",")[0]) : null,
        left: this.$el.data("position") ? parseFloat(this.$el.data("position").split(",")[1]) : null
      }, this.fixPosition(), this.renderImage(), this.$el.on({
        "draggable:dragenter": t.proxy(this.handleDropenter, this),
        "draggable:dragleave": t.proxy(this.handleDropleave, this),
        "draggable:drop": t.proxy(this.handleDrop, this)
      }), this.options.positionable && (this.$el.addClass("edy-img-drop-area-positionable"), this.$el.on("mousedown", t.proxy(this.handleMouseDown, this))), this.$el.on("click", ".edy-img-drop-area-remove-image", t.proxy(this.handleDeleteClick, this))
    },
    renderImage: function() {
      this.image && this.image.url ? (this.$el.addClass("active"), this.$el.html(this.options.removeBtn), this.$el.css("background-image", 'url("' + this.image.url + '")'), this.$el.css("background-position", this.image.left + "px " + this.image.top + "px")) : (this.$el.css("background-image", ""), this.$el.removeClass("active"), this.$el.html(this.options.placeholder))
    },
    handleDropenter: function() {
      this.$el.addClass("over")
    },
    handleDropleave: function() {
      this.$el.removeClass("over")
    },
    handleDrop: function(t, e) {
      this.$el.removeClass("over"), "photo" === e.payload.type && (this.image = {
        url: e.payload.url,
        width: e.payload.width,
        height: e.payload.height,
        top: null,
        left: null
      }, this.fixPosition(), this.renderImage(), this.handleImageChange())
    },
    handleDeleteClick: function(t) {
      t.preventDefault(), this.image = {
        url: '',
        width: null,
        height: null,
        top: null,
        left: null,
      },
      this.renderImage(),
      this.handleImageChange()
    },
    handleImageChange: function() {
      this.options.change(this.image), this.$el.trigger("imagedrop", [this.image])
    },
    fixPosition: function() {
      this.image && this.image.url && (this.move_height = this.$el.width() / this.$el.height() >= this.image.width / this.image.height, this.curScale = this.move_height ? this.$el.width() / this.image.width : this.$el.height() / this.image.height, this.cur_w = this.image.width * this.curScale, this.cur_h = this.image.height * this.curScale, this.min_pos = this.move_height ? this.$el.height() - this.cur_h : this.$el.width() - this.cur_w, null === this.image.top && (this.image.top = this.move_height ? this.min_pos / 2 : 0), null === this.image.left && (this.image.left = this.move_height ? 0 : this.min_pos / 2), this.image.fixed_dimension = this.move_height ? "width" : "height")
    },
    handleMouseDown: function(e) {
      this.image && this.image.url && (this.fixPosition(), this.mouse_start_x = e.pageX, this.mouse_start_y = e.pageY, t(document).on({
        "mousemove.imgdrop": t.proxy(this.handleMouseMove, this),
        "mouseup.imgdrop": t.proxy(this.handleMouseUp, this),
        "mouseleave.imgdrop": t.proxy(this.handleMouseUp, this)
      }))
    },
    handleMouseUp: function(e) {
      this.move_height ? this.image.top = Math.min(Math.max(this.image.top - (this.mouse_start_y - e.pageY), this.min_pos), 0) : this.image.left = Math.min(Math.max(this.image.left - (this.mouse_start_x - e.pageX), this.min_pos), 0), t(document).off({
        "mousemove.imgdrop": this.handleMouseMove,
        "mouseup.imgdrop": this.handleMouseUp,
        "mouseleave.imgdrop": this.handleMouseUp
      }), this.handleImageChange()
    },
    handleMouseMove: function(t) {
      var e;
      this.move_height ? (e = Math.min(Math.max(this.image.top - (this.mouse_start_y - t.pageY), this.min_pos), 0), this.$el.css("background-position", "0 " + e + "px")) : (e = Math.min(Math.max(this.image.left - (this.mouse_start_x - t.pageX), this.min_pos), 0), this.$el.css("background-position", e + "px 0"))
    }
  }, Edicy.ImgDropArea = i
}(Edicy.jQuery, Edicy.Underscore);
