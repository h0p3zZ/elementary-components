import Elementary

public extension HTMLTag {
    enum SLAnimation: HTMLTrait.Shoelace {
        public static let name = "sl-animation"
    }
}

public typealias SLAnimation<Content: HTML> = HTMLElement<HTMLTag.SLAnimation, Content>

// Should contain all the attributes defined on shoelaces SLAnimation component
// - that can be rendered on the server side and are not only getters
public extension HTMLAttribute where Tag == HTMLTag.SLAnimation {
    enum SLAnimationName: String {
        case backInDown = "back-in-down"
        case backInLeft = "back-in-left"
        case backInRight = "back-in-right"
        case backInUp = "back-in-up"
        case backOutDown = "back-out-down"
        case backOutLeft = "back-out-left"
        case backOutRight = "back-out-right"
        case backOutUp = "back-out-up"
        case bounce
        case bounceIn = "bounce-in"
        case bounceInDown = "bounce-in-down"
        case bounceInLeft = "bounce-in-left"
        case bounceInRight = "bounce-in-right"
        case boundInUp = "bounce-in-up"
        case bounceOut = "bounce-out"
        case bounceOutDown = "bounce-out-down"
        case bounceOutLeft = "bounce-out-left"
        case bounceOutRight = "bounce-out-right"
        case bounceOutUp = "bounce-out-up"
        case fadeIn = "fade-in"
        case fadeInBottomLeft = "fade-in-bottom-left"
        case fadeInBottomRight = "fade-in-bottom-right"
        case fadeInDown = "fade-in-down"
        case fadeInDownBig = "fade-in-down-big"
        case fadeInLeft = "fade-in-left"
        case fadeInLeftBig = "fade-in-left-big"
        case fadeInRight = "fade-in-right"
        case fadeInRightBig = "fade-in-right-big"
        case fadeInTopLeft = "fade-in-top-left"
        case fadeInTopRight = "fade-in-top-right"
        case fadeInUp = "fade-in-up"
        case fadeInUpBig = "fade-in-up-big"
        case fadeOut = "fade-out"
        case fadeOutBottomLeft = "fade-out-bottom-left"
        case fadeOutBottomRight = "fade-out-bottom-right"
        case fadeOutDown = "fade-out-down"
        case fadeOutDownBig = "fade-out-down-big"
        case fadeOutLeft = "fade-out-left"
        case fadeOutLeftBig = "fade-out-left-big"
        case fadeOutRight = "fade-out-right"
        case fadeOutRightBig = "fade-out-right-big"
        case fadeOutTopLeft = "fade-out-top-left"
        case fadeOutTopRight = "fade-out-top-right"
        case fadeOutUp = "fade-out-up"
        case fadeOutUpBig = "fade-out-up-big"
        case flash
        case flip
        case flipInX = "flip-in-x"
        case flipInY = "flip-in-y"
        case flipOutX = "flip-out-x"
        case flipOutY = "flip-out-y"
        case headShake = "head-shake"
        case heartBeat = "heart-beat"
        case hinge
        case jackInTheBox = "jack-in-the-box"
        case jello
        case lightSpeedInLeft = "light-speed-in-left"
        case lightSpeedInRight = "light-speed-in-right"
        case lightSpeedOutLeft = "light-speed-out-left"
        case lightSpeedOutRight = "light-speed-out-right"
        case pulse
        case rollIn = "roll-in"
        case rollOut = "roll-out"
        case rotateIn = "rotate-in"
        case rotateInDownLeft = "rotate-in-down-left"
        case rotateInDownRight = "rotate-in-down-right"
        case rotateInUpLeft = "rotate-in-up-left"
        case rotateInUpRight = "rotate-in-up-right"
        case rotateOut = "rotate-out"
        case rotateOutDownLeft = "rotate-out-down-left"
        case rotateOutDownRight = "rotate-out-down-right"
        case rotateOutUpLeft = "rotate-out-up-left"
        case rotateOutUpRight = "rotate-out-up-right"
        case rubberBand = "rubber-band"
        case shake
        case shakeX = "shake-x"
        case shakeY = "shake-y"
        case slieIndDown = "slide-in-down"
        case slideInLeft = "slide-in-left"
        case slideInRight = "slide-in-right"
        case slideInUp = "slide-in-up"
        case slideOutDown = "slide-out-down"
        case slideOutLeft = "slide-out-left"
        case slideOutRight = "slide-out-right"
        case slideOutUp = "slide-out-up"
        case swing
        case tada
        case wobble
        case zoomIn = "zoom-in"
        case zoomInDown = "zoom-in-down"
        case zoomInLeft = "zoom-in-left"
        case zoomInRight = "zoom-in-right"
        case zoomInUp = "zoom-in-up"
        case zoomOut = "zoom-out"
        case zoomOutDown = "zoom-out-down"
        case zoomOutLeft = "zoom-out-left"
        case zoomOutRight = "zoom-out-right"
        case zoomOutUp = "zoom-out-up"
    }

    /// The name of the built-in animation to use. For custom animations, use the `keyframes` attribute. Default `none`.
    /// - Parameter name: The name of the animation to be used.
    /// - Returns: The HTMLAttribute (`name="(value)"`)
    static func name(_ name: SLAnimationName) -> Self {
        .init(name: "name", value: name.rawValue)
    }

    /// The number of milliseconds to delay the start of the animation. Default `0`.
    /// - Parameter number: The delay of the animation in milliseconds
    /// - Returns: The HTMLAttribute (`delay="(value)"`)
    static func delay(_ number: Int) -> Self {
        .init(name: "delay", value: String(number))
    }

    enum SLAnimationPlaybackDirection: String {
        case normal
        case revers
        case alternate
        case alternateReverse = "alternate-reverse"
    }

    /// Determines the direction of playback as well as the behavior when reaching the end of an iteration. [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-direction). Default `normal`.
    /// - Parameter direction: 
    /// - Returns: 
    static func direction (_ direction: SLAnimationPlaybackDirection...) -> Self {
        .init(name: "direction", value: direction.map(\.rawValue).joined(separator: ","), mergedBy: .appending(seperatedBy: ","))
    }

    /// The number of milliseconds each iteration of the animation takes to complete. Default `1000`.
    /// - Parameter direction: Number of milliseconds the animation lasts
    /// - Returns: The HTMLAttribute (`duration="(value)"`)
    static func duration (_ number: Int) -> Self {
        .init(name: "duration", value: String(number))
    }
    
    struct SLAnimationEasing: RawRepresentable {
        public var rawValue: String
        public init(rawValue: String) {
            self.rawValue = rawValue
        }

        static var linear: Self { .init(rawValue: "linear") }
        static var ease: Self { .init(rawValue: "ease") }
        static var easeIn: Self { .init(rawValue: "ease-in") }
        static var easeOut: Self { .init(rawValue: "ease-out") }
        static var easeInOut: Self { .init(rawValue: "ease-in-out") }
        static var easeInSine: Self { .init(rawValue: "ease-in-sine") }
        static var easeOutSine: Self { .init(rawValue: "ease-out-sine") }
        static var easeInOutSine: Self { .init(rawValue: "ease-in-out-sine") }
        static var easeInQuad: Self { .init(rawValue: "ease-in-quad") }
        static var easeOutQuad: Self { .init(rawValue: "ease-out-quad") }
        static var easeInOutQuad: Self { .init(rawValue: "ease-in-out-quad") }
        static var easeInCubic: Self { .init(rawValue: "ease-in-cubic") }
        static var easeOutCubic: Self { .init(rawValue: "ease-out-cubic") }
        static var easeInOutCubic: Self { .init(rawValue: "ease-in-out-cubic") }
        static var easeInQuart: Self { .init(rawValue: "ease-in-quart") }
        static var easeOutQuart: Self { .init(rawValue: "ease-out-quart") }
        static var easeInOutQuart: Self { .init(rawValue: "ease-in-out-quart") }
        static var easeInQuint: Self { .init(rawValue: "ease-in-quint") }
        static var easeOutQuint: Self { .init(rawValue: "ease-out-quint") }
        static var easeInOutQuint: Self { .init(rawValue: "ease-in-out-quint") }
        static var easeInExpo: Self { .init(rawValue: "ease-in-expo") }
        static var easeOutExpo: Self { .init(rawValue: "ease-out-expo") }
        static var easeInOutExpo: Self { .init(rawValue: "ease-in-out-expo") }
        static var easeInCirc: Self { .init(rawValue: "ease-in-circ") }
        static var easeOutCirc: Self { .init(rawValue: "ease-out-circ") }
        static var easeInOutCirc: Self { .init(rawValue: "ease-in-out-circ") }
        static var easeInBack: Self { .init(rawValue: "ease-in-back") }
        static var easeOutBack: Self { .init(rawValue: "ease-out-back") }
        static var easeInOutBack: Self { .init(rawValue: "ease-in-out-back") }
    }

    /// The easing function to use for the animation. This can be a Shoelace easing function or a custom easing function such as cubic-bezier(0, 1, .76, 1.14). Default `linear`.
    /// - Parameter easing: The easing function to be used
    /// - Returns: The HTMLAttribute (`easing="(value)"`)
    static func easing(_ easing: SLAnimationEasing) -> Self {
        .init(name: "easing", value: easing.rawValue)
    }

    /// The number of milliseconds to delay after the active period of an animation sequence. Default `0`.
    /// - Parameter number: The delay after the animation in milliseconds
    /// - Returns: The HTMLAttribute (`end-delay="(value)"`)
    static func endDelay(_ number: Int) -> Self {
        .init(name: "end-delay", value: String(number))
    }

    enum SLAnimationFillMode: String {
        case auto
        case none
        case forwards
        case backwards
        case both
    }

    /// Sets how the animation applies styles to its target before and after its execution. Default `auto`.
    /// - Parameter direction: The fill mode to be used
    /// - Returns: The HTMLAttribute (`fill="(value, ...)"`)	
    static func fill (_ fill: SLAnimationFillMode...) -> Self {
        .init(name: "fill", value: fill.map(\.rawValue).joined(separator: ","), mergedBy: .appending(seperatedBy: ","))
    }

    /// The number of times the animation should repeat. Default `Infinity`.
    /// - Parameter number: number of repetitions
    /// - Returns: The HTMLAttribute (`iterations="(value)"`)
    static func iterations(_ number: Int) -> Self {
        .init(name: "iterations", value: String(number))
    }

    /// The offset at which to start the animation, usually between 0 (start) and 1 (end). Default `0`.
    /// - Parameter number: Percentage of the animation to start at.
    /// - Returns: The HTMLAttribute (`iteration-start="(value)"`)
    static func iterationStart(_ number: Int) -> Self {
        .init(name: "iteration-start", value: String(number))
    }

    // TODO: Investigate whether this can be an actual KeyFrame object instead of a string
    /// The keyframes to use for the animation. If this is set, name will be ignored. Default `-`.
    /// - Parameter keyframes: The keyframes to be used
    /// - Returns: The HTMLAttribute (`keyframes="(value)"`)
    static func keyframes(_ keyframes: String) -> Self {
        .init(name: "keyframes", value: keyframes)
    }

    /// Sets the animation’s playback rate. The default is 1, which plays the animation at a normal speed. Setting this to 2, for example, will double the animation’s speed. A negative value can be used to reverse the animation. This value can be changed without causing the animation to restart. Default `1`.
    /// - Parameter rate: Playback rate of the animation as a double (percentage).
    /// - Returns: The HTMLAttribute (`playback-rate="(value)"`)
    static func playbackRate(_ rate: Double) -> Self {
        .init(name: "playback-rate", value: String(rate))
    }

    /// Sets the current animation time. Default `-`.
    /// - Parameter time: The animation time.
    /// - Returns: The HTMLAttribute (`current-time="(value)"`)
    static func currentTime(_ time: String) -> Self {
        .init(name: "current-time", value: time)
    }
}

extension HTMLTag.SLAnimation: HTMLTrait.Attributes.shoelace.play {}