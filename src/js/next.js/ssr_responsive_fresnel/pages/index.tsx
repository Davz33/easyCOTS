/**
 * @author Davide Vitiello
 * @author Eloy Durán <eloy.de.enige@gmail.com> Artsy Inc. <engineering@artsymail.com>
 */

import { Media, MediaContextProvider } from '../media';
import type {NextPage} from 'next';

const Home: NextPage = ():any =>{
    return(
        <MediaContextProvider>
            <Media lessThan="sm">
                {/*alternative html mobile*/}
            </Media>
            <Media greatherThanOrEqual="sm">
                {/*alternative html desktop*/}
            </Media>
        </MediaContextProvider>
    )
}
