import logo from "./components/images/watchbasev2.png";
import background from "./components/images/background.png"
import { useNavigate } from 'react-router-dom';

function Home() {
  const navigate = useNavigate();
  return (
    <>
    <img className="background" src={background}/>
    <div className="overlay"/>

      <div className="container text-center hero">
        <img className="h-80" src={logo} alt="Logo"/>
        <h2 className="display-4 fw-bold mt-5">Check it. Track it. Watch it.</h2>
        <a onClick={() => navigate('/movies')} className="btn btn-danger mt-3">
          Jetzt kostenlos loslegen!
        </a>
      </div>
    </>
  );
}

export default Home;
