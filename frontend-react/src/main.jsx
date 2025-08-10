import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import 'bootstrap/dist/css/bootstrap.min.css';
import './styles/style.css'
import App from './App.jsx'
import Impressum from './components/Impressum.jsx'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<App />} />
         <Route path="/watchlist" element={<App initialWatchlist={true} />} />
        <Route path="/impressum" element={<Impressum />} />
      </Routes>
    </BrowserRouter>
  </StrictMode>,
)
