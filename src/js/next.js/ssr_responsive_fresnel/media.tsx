/**
 * @author Davide Vitiello
 * @author Eloy Durán <eloy.de.enige@gmail.com> Artsy Inc. <engineering@artsymail.com>
 */
import { createMedia } from "@artsy/fresnel"

const AppMedia = createMedia({
  breakpoints: {
    xs: 0,
    sm: 768,
    md: 1000,
    lg: 1200,
  },
})

// Make styles for injection into the header of the page
export const mediaStyles = AppMedia.createMediaStyle()

export const { Media, MediaContextProvider } = AppMedia